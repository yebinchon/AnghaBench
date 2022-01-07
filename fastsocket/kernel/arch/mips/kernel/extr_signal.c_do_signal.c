
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {scalar_t__* regs; int cp0_epc; } ;
struct k_sigaction {int dummy; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_5__ {TYPE_1__* abi; } ;
struct TYPE_6__ {int saved_sigmask; TYPE_2__ thread; int blocked; } ;
struct TYPE_4__ {scalar_t__ restart; } ;


 scalar_t__ ERESTARTNOHAND ;
 scalar_t__ ERESTARTNOINTR ;
 scalar_t__ ERESTARTSYS ;
 scalar_t__ ERESTART_RESTARTBLOCK ;
 int SIG_SETMASK ;
 int TIF_RESTORE_SIGMASK ;
 int clear_thread_flag (int ) ;
 TYPE_3__* current ;
 int get_signal_to_deliver (int *,struct k_sigaction*,struct pt_regs*,int *) ;
 scalar_t__ handle_signal (int,int *,struct k_sigaction*,int *,struct pt_regs*) ;
 int sigprocmask (int ,int *,int *) ;
 scalar_t__ test_thread_flag (int ) ;
 int user_mode (struct pt_regs*) ;

__attribute__((used)) static void do_signal(struct pt_regs *regs)
{
 struct k_sigaction ka;
 sigset_t *oldset;
 siginfo_t info;
 int signr;






 if (!user_mode(regs))
  return;

 if (test_thread_flag(TIF_RESTORE_SIGMASK))
  oldset = &current->saved_sigmask;
 else
  oldset = &current->blocked;

 signr = get_signal_to_deliver(&info, &ka, regs, ((void*)0));
 if (signr > 0) {

  if (handle_signal(signr, &info, &ka, oldset, regs) == 0) {






   if (test_thread_flag(TIF_RESTORE_SIGMASK))
    clear_thread_flag(TIF_RESTORE_SIGMASK);
  }

  return;
 }






 if (regs->regs[0]) {
  if (regs->regs[2] == ERESTARTNOHAND ||
      regs->regs[2] == ERESTARTSYS ||
      regs->regs[2] == ERESTARTNOINTR) {
   regs->regs[7] = regs->regs[26];
   regs->cp0_epc -= 8;
  }
  if (regs->regs[2] == ERESTART_RESTARTBLOCK) {
   regs->regs[2] = current->thread.abi->restart;
   regs->regs[7] = regs->regs[26];
   regs->cp0_epc -= 4;
  }
  regs->regs[0] = 0;
 }





 if (test_thread_flag(TIF_RESTORE_SIGMASK)) {
  clear_thread_flag(TIF_RESTORE_SIGMASK);
  sigprocmask(SIG_SETMASK, &current->saved_sigmask, ((void*)0));
 }
}
