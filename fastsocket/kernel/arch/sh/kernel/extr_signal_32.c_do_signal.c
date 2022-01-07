
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pt_regs {scalar_t__ tra; unsigned int* regs; scalar_t__ pc; } ;
struct k_sigaction {int sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_2__ {int saved_sigmask; int blocked; } ;


 unsigned int ERESTARTNOHAND ;
 unsigned int ERESTARTNOINTR ;
 unsigned int ERESTARTSYS ;
 unsigned int ERESTART_RESTARTBLOCK ;
 int SIG_SETMASK ;
 int TIF_RESTORE_SIGMASK ;
 int TIF_SINGLESTEP ;
 unsigned int __NR_restart_syscall ;
 int clear_thread_flag (int ) ;
 int ctrl_inw (scalar_t__) ;
 TYPE_1__* current ;
 int get_signal_to_deliver (int *,struct k_sigaction*,struct pt_regs*,int *) ;
 scalar_t__ handle_signal (int,struct k_sigaction*,int *,int *,struct pt_regs*,unsigned int) ;
 int handle_syscall_restart (unsigned int,struct pt_regs*,int *) ;
 scalar_t__ instruction_size (int ) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ test_thread_flag (int ) ;
 int tracehook_signal_handler (int,int *,struct k_sigaction*,struct pt_regs*,scalar_t__) ;
 scalar_t__ try_to_freeze () ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_signal(struct pt_regs *regs, unsigned int save_r0)
{
 siginfo_t info;
 int signr;
 struct k_sigaction ka;
 sigset_t *oldset;







 if (!user_mode(regs))
  return;

 if (try_to_freeze())
  goto no_signal;

 if (test_thread_flag(TIF_RESTORE_SIGMASK))
  oldset = &current->saved_sigmask;
 else
  oldset = &current->blocked;

 signr = get_signal_to_deliver(&info, &ka, regs, ((void*)0));
 if (signr > 0) {
  handle_syscall_restart(save_r0, regs, &ka.sa);


  if (handle_signal(signr, &ka, &info, oldset,
      regs, save_r0) == 0) {




   if (test_thread_flag(TIF_RESTORE_SIGMASK))
    clear_thread_flag(TIF_RESTORE_SIGMASK);

   tracehook_signal_handler(signr, &info, &ka, regs,
     test_thread_flag(TIF_SINGLESTEP));
  }

  return;
 }

no_signal:

 if (regs->tra >= 0) {

  if (regs->regs[0] == -ERESTARTNOHAND ||
      regs->regs[0] == -ERESTARTSYS ||
      regs->regs[0] == -ERESTARTNOINTR) {
   regs->regs[0] = save_r0;
   regs->pc -= instruction_size(ctrl_inw(regs->pc - 4));
  } else if (regs->regs[0] == -ERESTART_RESTARTBLOCK) {
   regs->pc -= instruction_size(ctrl_inw(regs->pc - 4));
   regs->regs[3] = __NR_restart_syscall;
  }
 }



 if (test_thread_flag(TIF_RESTORE_SIGMASK)) {
  clear_thread_flag(TIF_RESTORE_SIGMASK);
  sigprocmask(SIG_SETMASK, &current->saved_sigmask, ((void*)0));
 }
}
