
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINTR ;
 int EIO ;
 int ENOSPC ;
 int acquire_console_sem () ;
 scalar_t__ disable_vt_switch ;
 int fg_console ;
 int pr_debug (char*) ;
 int release_console_sem () ;
 scalar_t__ set_console (unsigned int) ;
 scalar_t__ vc_allocate (unsigned int) ;
 scalar_t__ vt_waitactive (unsigned int) ;

int vt_move_to_console(unsigned int vt, int alloc)
{
 int prev;

 acquire_console_sem();

 if (disable_vt_switch) {
  release_console_sem();
  return 0;
 }
 prev = fg_console;

 if (alloc && vc_allocate(vt)) {


  release_console_sem();
  return -ENOSPC;
 }

 if (set_console(vt)) {





  release_console_sem();
  return -EIO;
 }
 release_console_sem();
 if (vt_waitactive(vt + 1)) {
  pr_debug("Suspend: Can't switch VCs.");
  return -EINTR;
 }
 return prev;
}
