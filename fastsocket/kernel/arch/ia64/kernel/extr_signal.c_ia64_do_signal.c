
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {long r8; long r1; int cr_iip; int r15; scalar_t__ r10; } ;
struct sigscratch {TYPE_2__ pt; } ;
struct TYPE_8__ {int sa_flags; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_11__ {int saved_sigmask; int blocked; } ;
struct TYPE_10__ {int status; } ;


 int EINTR ;




 void* ERR_CODE (int ) ;
 scalar_t__ IS_IA32_PROCESS (TYPE_2__*) ;
 int SA_RESTART ;
 int SIG_SETMASK ;
 int TS_RESTORE_SIGMASK ;
 int __NR_restart_syscall ;
 TYPE_6__* current ;
 TYPE_5__* current_thread_info () ;
 int get_signal_to_deliver (int *,struct k_sigaction*,TYPE_2__*,int *) ;
 scalar_t__ handle_signal (int,struct k_sigaction*,int *,int *,struct sigscratch*) ;
 int ia64_decrement_ip (TYPE_2__*) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ unlikely (long) ;
 int user_mode (TYPE_2__*) ;

void
ia64_do_signal (struct sigscratch *scr, long in_syscall)
{
 struct k_sigaction ka;
 sigset_t *oldset;
 siginfo_t info;
 long restart = in_syscall;
 long errno = scr->pt.r8;







 if (!user_mode(&scr->pt))
  return;

 if (current_thread_info()->status & TS_RESTORE_SIGMASK)
  oldset = &current->saved_sigmask;
 else
  oldset = &current->blocked;





 while (1) {
  int signr = get_signal_to_deliver(&info, &ka, &scr->pt, ((void*)0));







  if (IS_IA32_PROCESS(&scr->pt)) {
   if (in_syscall) {
    if (errno >= 0)
     restart = 0;
    else
     errno = -errno;
   }
  } else if ((long) scr->pt.r10 != -1)






   restart = 0;

  if (signr <= 0)
   break;

  if (unlikely(restart)) {
   switch (errno) {
         case 128:
         case 131:
    scr->pt.r8 = (IS_IA32_PROCESS(&scr->pt) ? -(EINTR) : (EINTR));

    break;

         case 129:
    if ((ka.sa.sa_flags & SA_RESTART) == 0) {
     scr->pt.r8 = (IS_IA32_PROCESS(&scr->pt) ? -(EINTR) : (EINTR));

     break;
    }
         case 130:
    if (IS_IA32_PROCESS(&scr->pt)) {
     scr->pt.r8 = scr->pt.r1;
     scr->pt.cr_iip -= 2;
    } else
     ia64_decrement_ip(&scr->pt);
    restart = 0;
   }
  }





  if (handle_signal(signr, &ka, &info, oldset, scr)) {






   current_thread_info()->status &= ~TS_RESTORE_SIGMASK;
   return;
  }
 }


 if (restart) {

  if (errno == 131 || errno == 129 || errno == 130
      || errno == 128)
  {
   if (IS_IA32_PROCESS(&scr->pt)) {
    scr->pt.r8 = scr->pt.r1;
    scr->pt.cr_iip -= 2;
    if (errno == 128)
     scr->pt.r8 = 0;
   } else {





    ia64_decrement_ip(&scr->pt);
    if (errno == 128)
     scr->pt.r15 = __NR_restart_syscall;
   }
  }
 }



 if (current_thread_info()->status & TS_RESTORE_SIGMASK) {
  current_thread_info()->status &= ~TS_RESTORE_SIGMASK;
  sigprocmask(SIG_SETMASK, &current->saved_sigmask, ((void*)0));
 }
}
