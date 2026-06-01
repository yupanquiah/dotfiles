fastfetch

# Icons
Import-Module -Name Terminal-Icons

# PSReadLine
Set-PsReadLineOption -EditMode Emacs
Set-PsReadLineOption -BellStyle None
Set-PsReadLineKeyHandler -Chord 'Ctrl+d' -Function DeleteChar
Set-PsReadLineOption -PredictionSource History

# Alias
Set-Alias touch ni

function ls
{
  eza --icons --group-directories-first  @args
}

function ll
{
  eza -l --icons --group-directories-first @args
}

function la
{
  eza -la --icons --group-directories-first @args
}

function tree
{
  eza --tree --icons @args
}
