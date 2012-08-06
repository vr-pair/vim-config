
" Disable fold recalculation in insert mode.  This prevents some slowness and
" opening folds bizarrely.

aug DisableFoldcalculationInInsertMode
  au!
  au DisableFoldcalculationInInsertMode InsertEnter * let b:fdm_restore = &fdm
  au DisableFoldcalculationInInsertMode InsertEnter * set fdm=manual
  au DisableFoldcalculationInInsertMode InsertLeave * let &fdm = b:fdm_restore
aug END
