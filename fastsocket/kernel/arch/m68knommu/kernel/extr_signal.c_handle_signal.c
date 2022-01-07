
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct pt_regs {scalar_t__ orig_d0; } ;
struct TYPE_4__ {int sa_flags; int sa_mask; int sa_handler; } ;
struct k_sigaction {TYPE_1__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_6__ {TYPE_2__* sighand; int blocked; } ;
struct TYPE_5__ {int siglock; } ;


 int SA_NODEFER ;
 int SA_ONESHOT ;
 int SA_SIGINFO ;
 int SIG_DFL ;
 TYPE_3__* current ;
 int handle_restart (struct pt_regs*,struct k_sigaction*,int) ;
 int recalc_sigpending () ;
 int setup_frame (int,struct k_sigaction*,int *,struct pt_regs*) ;
 int setup_rt_frame (int,struct k_sigaction*,int *,int *,struct pt_regs*) ;
 int sigaddset (int *,int) ;
 int sigorsets (int *,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void
handle_signal(int sig, struct k_sigaction *ka, siginfo_t *info,
       sigset_t *oldset, struct pt_regs *regs)
{

 if (regs->orig_d0 >= 0)

  handle_restart(regs, ka, 1);


 if (ka->sa.sa_flags & SA_SIGINFO)
  setup_rt_frame(sig, ka, info, oldset, regs);
 else
  setup_frame(sig, ka, oldset, regs);

 if (ka->sa.sa_flags & SA_ONESHOT)
  ka->sa.sa_handler = SIG_DFL;

 spin_lock_irq(&current->sighand->siglock);
 sigorsets(&current->blocked,&current->blocked,&ka->sa.sa_mask);
 if (!(ka->sa.sa_flags & SA_NODEFER))
  sigaddset(&current->blocked,sig);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);
}
