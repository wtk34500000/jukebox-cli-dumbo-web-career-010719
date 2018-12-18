songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]


def help
  puts "I accept the following commands:"
  puts "- help : displays this help message"
  puts "- list : displays a list of songs you can play"
  puts "- play : lets you choose a song to play"
  puts "- exit : exits this program"
end

def play(songs)
  puts "Please enter a song name or number:"
  
  song_name=gets.chomp
  song_number=song_name.to_i
  
    if song_number == 0
       if songs.include?(song_name)
          puts "Playing #{song_name}"
        else
          puts "Invalid input, please try again"
       end
    
    else
      if song_number <= songs.length
        puts "Playing #{songs[song_number-1]}"
      else
        puts "Invalid input, please try again"
       end
    end
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index+1 }. #{song}"
  end
end

def exit_jukebox 
  puts "Goodbye"
end
