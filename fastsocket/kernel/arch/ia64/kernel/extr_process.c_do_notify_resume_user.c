
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sigscratch {int pt; } ;
typedef int sigset_t ;
struct TYPE_5__ {scalar_t__ pfm_needs_checking; } ;
struct TYPE_7__ {scalar_t__ replacement_session_keyring; TYPE_1__ thread; } ;
struct TYPE_6__ {int lp; } ;


 int TIF_NOTIFY_RESUME ;
 int TIF_RESTORE_RSE ;
 int TIF_SIGPENDING ;
 int clear_thread_flag (int ) ;
 TYPE_3__* current ;
 scalar_t__ fsys_mode (TYPE_3__*,int *) ;
 int ia64_do_signal (struct sigscratch*,long) ;
 TYPE_2__* ia64_psr (int *) ;
 int ia64_sync_krbs () ;
 int key_replace_session_keyring () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pfm_handle_work () ;
 scalar_t__ test_thread_flag (int ) ;
 int tracehook_notify_resume (int *) ;
 scalar_t__ unlikely (scalar_t__) ;

void
do_notify_resume_user(sigset_t *unused, struct sigscratch *scr, long in_syscall)
{
 if (fsys_mode(current, &scr->pt)) {




  if (!ia64_psr(&scr->pt)->lp)
   ia64_psr(&scr->pt)->lp = 1;
  return;
 }
 if (test_thread_flag(TIF_SIGPENDING)) {
  local_irq_enable();
  ia64_do_signal(scr, in_syscall);
 }

 if (test_thread_flag(TIF_NOTIFY_RESUME)) {
  clear_thread_flag(TIF_NOTIFY_RESUME);
  tracehook_notify_resume(&scr->pt);
  if (current->replacement_session_keyring)
   key_replace_session_keyring();
 }


 if (unlikely(test_thread_flag(TIF_RESTORE_RSE))) {
  local_irq_enable();
  ia64_sync_krbs();
 }

 local_irq_disable();
}
