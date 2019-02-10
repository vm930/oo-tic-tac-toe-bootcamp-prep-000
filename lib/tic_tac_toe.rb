class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end
 
  def turn_count
    @board.count{|token| token == "X" || token == "O"}
  end 
  
  def current_player
    turn_count % 2 == 0 ? "X" : "O"
  end
  
  def display_board
    puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    puts "-----------"
    puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    puts "-----------"
    puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
  end
  
  WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8]]
  
  def input_to_index(input)
    @board[input.to_i-1] = input.to_i
  end
  
  # def move(index,players_token="X")

  # end 
  
  def position_taken? (index)
    if @board[index] == "X" || @board[index] =="O"
      return true
    else 
      false
  end 
  
  
  # def valid_move?(index)
  #   if @board[index].position_taken?
  #     return false
  #   else
  #     return true
  # end 
  
  
  # def turn
  #   puts "Please make a move"
  #   input = gets.chomp!
  #   input.input_to_index.valid_move? display_board:"please make a move!"
  # end 
  
end 