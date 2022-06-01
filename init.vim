" Initialize plugin system
call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'tpope/vim-fugitive'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sprockmonty/vim-please'
"added by Vince on Jun 25th 2021
Plug 'ojroques/vim-oscyank'

call plug#end()

:nnoremap <unique> nt :NERDTreeToggle<CR>

" vim-go
" automatic import management
let g:go_fmt_command = "goimports"
" syntax highlighting
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
" status bar
let g:go_auto_type_info = 1
" matching identifiers
let g:go_auto_sameids = 1

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Remap for rename current word
nmap <leader>r <Plug>(coc-rename)

"" added by Vince on 19 Apr 2019
"set backspace=indent,eol,start

" added by Vince on Apr 29th 2019.
" Enable folding
set foldmethod=indent
set foldlevel=99

" added by Vince on May 8th 2019.
:inoremap jk <Esc> 

" added by Vince on May 10th 2019
syntax on

" added by Vince on May 15th 2019
set clipboard=unnamed
set nu
set relativenumber
"
"added by Vince on Oct 6th 2020
set encoding=utf-8
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
"Added by Vince on 5th Jun 2021
au BufWritePre  *.py call CocAction('format')

"Added by Vince on 5th Jun 2021
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H> 
set ts=4 sts=4 sw=4 expandtab
set clipboard^=unnamed,unnamedplus

" added by Vince on Jun 25th 2021
"vmap "+y :!xclip -f -sel clip
vnoremap <leader>y :OSCYank<CR>
"inoremap "+y :!xclip -f -sel clip
"map "+p :r!xclip -o -sel clip
"map "+P :r!xclip -o -sel clip

"Added by Vince on April 7th 2022
if exists('+colorcolumn')
  set colorcolumn=100
endif
