class GameController < ApplicationController
  def user_played_rock
    moves = ["rock", "paper", "scissors"]
    
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "Tied"
    elsif @computer_move == "scissors"
      @outcome = "Won"
    else
      @outcome = "Lost"
    end

    render({ :template => "my_templates/play_rock" })
  end

  def user_played_paper
    moves = ["rock", "paper", "scissors"]
    
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "Won"
    elsif @computer_move == "scissors"
      @outcome = "Lost"
    else
      @outcome = "Tied"
    end

    render({ :template => "my_templates/play_paper" })
  end

  def user_played_scissors
    moves = ["rock", "paper", "scissors"]
    
    @computer_move = moves.sample

    if @computer_move == "rock"
      @outcome = "Lost"
    elsif @computer_move == "scissors"
      @outcome = "Tied"
    else
      @outcome = "Won"
    end

    render({ :template => "my_templates/play_scissors" })
  end

  def user_played_rules
    render({ :template => "my_templates/play_rules"})
  end
end
