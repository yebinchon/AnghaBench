
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {int dummy; } ;
typedef int __u32 ;
struct TYPE_2__ {scalar_t__ replacement_session_keyring; } ;


 int TIF_IRET ;
 int TIF_NOTIFY_RESUME ;
 int _TIF_MCE_NOTIFY ;
 int _TIF_NOTIFY_RESUME ;
 int _TIF_SIGPENDING ;
 int _TIF_USER_RETURN_NOTIFY ;
 int clear_thread_flag (int ) ;
 TYPE_1__* current ;
 int do_signal (struct pt_regs*) ;
 int fire_user_return_notifiers () ;
 int key_replace_session_keyring () ;
 int mce_notify_process () ;
 int tracehook_notify_resume (struct pt_regs*) ;

void
do_notify_resume(struct pt_regs *regs, void *unused, __u32 thread_info_flags)
{







 if (thread_info_flags & _TIF_SIGPENDING)
  do_signal(regs);

 if (thread_info_flags & _TIF_NOTIFY_RESUME) {
  clear_thread_flag(TIF_NOTIFY_RESUME);
  tracehook_notify_resume(regs);
  if (current->replacement_session_keyring)
   key_replace_session_keyring();
 }
 if (thread_info_flags & _TIF_USER_RETURN_NOTIFY)
  fire_user_return_notifiers();




}
