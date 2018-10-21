def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  
  valid = nil
  if board[index] == " " || board[index] == '' || board[index] == nil
    valid = true 
  else 
    valid = false 
  end
  valid
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  # board = [" "," "," "," "," "," "," "," "," "]
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end