function ls --wraps exa
    command exa -la --color=auto --group-directories-first $argv
end

function cat --wraps bat
    command bat $argv
end

function grep --wraps rg
    command rg $argv
end

function find --wraps fd
    command fd $argv
end

function cs --wraps ls
    cd $argv && ls
end

function ds --wraps ls
    cd .. && ls
end

function mv --wraps mv
    command mv -i $argv
end

function rm --wraps rm
    command rm -I $argv
end

fish_add_path /home/jzhou/bin/

starship init fish | source
