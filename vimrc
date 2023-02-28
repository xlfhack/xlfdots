set nocompatible              " required
filetype off                  " required

set rtp+=~/.vim/pack/vendor/start/Vundle.vim "run time path to initialise

call vundle#begin('~/.vim/pack/vendor/start') "path to install plugins

Plugin 'gmarik/Vundle.vim' "vundle to handle vundle
Plugin 'tpope/vim-unimpaired'
Plugin 'scrooloose/nerdtree'
Plugin 'machakann/vim-highlightedyank'
Plugin 'tpope/vim-fugitive'  "for git  
Plugin 'vim-python/python-syntax'
Plugin 'erichdongubler/vim-sublime-monokai'
Plugin 'lervag/vimtex'
Plugin 'justinmk/vim-sneak'
Plugin 'morhetz/gruvbox' "color schemes'
Plugin 'glepnir/oceanic-material'
Plugin 'easymotion/vim-easymotion'
Plugin 'haya14busa/incsearch-easymotion.vim'
Plugin 'mileszs/ack.vim'
Plugin 'rhysd/vim-grammarous' 
Plugin 'junegunn/goyo.vim' " for GOYO
Plugin 'terryma/vim-multiple-cursors'   " Multiple cursors like sublime
Plugin 'voldikss/vim-translator'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
Plugin 'sheerun/vim-polyglot'
Plugin 'mracos/mermaid.vim'
Plugin 'godlygeek/tabular'              " For alignment
Plugin 'junegunn/vim-easy-align'        " Easier alignment
Plugin 'davidhalter/jedi-vim'
Plugin 'mhinz/vim-startify'
call vundle#end() 
filetype plugin indent on    

set shortmess+=I
set splitbelow
set splitright
set background=dark

set foldmethod=indent " Enable folding
set foldlevel=99

"configuring the term colors 
set termguicolors
let g:gruvbox_italic=1
colorscheme gruvbox 
set t_Co=256
set background=dark
hi Normal guibg=NONE ctermbg=NONE
let g:terminal_ansi_colors = [
    \ '#282828', '#cc241d', '#98971a', '#d79921',
    \ '#458588', '#b16286', '#689d6a', '#a89984',
    \ '#928374', '#fb4934', '#b8bb26', '#fabd2f',
    \ '#83a598', '#d3869b', '#8ec07c', '#ebdbb2',
\] "for gruv box

set nu "number lines
set rnu 
set noshowmode
nmap Q <Nop>

" quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

"undoing stuff
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir
map H ^
map L $

" tab completion for files/bufferss
set wildmode=longest,list
set wildmenu
set mouse+=a " enable mouse mode (scrolling, selection, etc)

" centering the search results

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz
nnoremap <silent> g* g*zz
nnoremap <C-o> <C-o>zz nnoremap <C-i> <C-i>zz

" vimtex
let g:tex_flavor = "latex"

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"remaping esc keys
nnoremap <C-k> <Esc>
inoremap <C-k> <Esc>
vnoremap <C-k>  <Esc>
snoremap <C-k> <Esc>
xnoremap <C-k> <Esc>
cnoremap <C-> <C-c>
onoremap <C-k> <Esc>
lnoremap <C-k> <Esc>
tnoremap <C-k> <Esc>

" in ncoc.coc Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif


"  Move up/down into wrapped lines 
nnoremap   j  gj 
nnoremap  k  gk

nnoremap <silent><C-e> :NERDTreeToggle<CR>
"vnoremap <C-C> :w !xclip -i -sel c<CR><CR>
