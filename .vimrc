" .vimrc Setup
" Victor Domene
" January 28th, 2016

 " Launch Config {{{
set nocompatible              " be iMproved, required
set autochdir                 " automatically changes directory according to file
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" Install Bundles {{{
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
" }}}

call vundle#end()
filetype plugin on
filetype plugin indent on
" }}}

" Colors {{{
syntax enable           " enable syntax processing
colorscheme jellybeans     " uses jellybeans color scheme
" }}}

" Misc {{{
set ttyfast                 " faster redraw
set backspace=indent,eol,start
" }}}

" Spaces & Tabs {{{
set tabstop=4           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=4       " 4 space tab
set modelines=1
set autoindent
" }}}

" UI Layout {{{
set number              " show line numbers
set showcmd             " show command in bottom bar
set wildmenu		" autocomplete for command menu
set lazyredraw		" lazy redraw, vim can be annoying
set showmatch           " higlight matching parenthesis
" }}}

" Searching {{{
set ignorecase          " ignore case when searching
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
" }}}

" Folding {{{
set foldmethod=indent   " fold based on indent level
set foldnestmax=10      " max 10 depth
set foldenable          " don't fold files by default on open
nnoremap <space> za
set foldlevelstart=10    " start with fold level of 1
"  }}}

" Line Shortcuts {{{
noremap j gj 		" move vertically by line, not wrap
noremap k gk		" move horizontally by line, not wrap
noremap B ^		" move to beginning of line
nnoremap E $		" move to end of line
nnoremap gV `[v`]	" highlight last inserted stuff
inoremap jk <esc>

" changes controls for split screens
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h

" }}}

" Leader Shortcuts {{{
let mapleader=","
nnoremap <leader>m :silent make \|redraw!\|cw<CR>
nnoremap <leader>s :mksession!<CR>
nnoremap <leader>C :SyntasticCheck<CR>:Errors<CR>
" }}}

" CtrlP {{{  
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = '\vbuild/|dist/|venv/|target/|\.(o|swp|pyc|egg)$'
"  }}}

" Airline {{{
set laststatus=2
let g:airline_powerline_fonts=1
" }}}

" Syntastic {{{
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_balloons = 0
let g:syntastic_error_symbol = '!'
let g:syntastic_ignore_files = ['\.min\.js$', '\.min\.css$']
let g:syntastic_loc_list_height = 5
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_error_symbol = '!'
let g:syntastic_style_warning_symbol = '!'

let g:syntastic_sh_checkers = ['shellcheck']
" }}}

" Backups {{{
set backup 
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set backupskip=/tmp/*,/private/tmp/* 
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp 
set writebackup
" }}}

" vim:foldmethod=marker:foldlevel=0