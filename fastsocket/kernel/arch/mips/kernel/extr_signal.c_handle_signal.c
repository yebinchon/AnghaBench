
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct pt_regs {int* regs; int cp0_epc; } ;
struct TYPE_8__ {int sa_flags; int sa_mask; } ;
struct k_sigaction {TYPE_3__ sa; } ;
typedef int sigset_t ;
typedef int siginfo_t ;
struct TYPE_7__ {TYPE_1__* abi; } ;
struct TYPE_10__ {TYPE_4__* sighand; int blocked; TYPE_2__ thread; } ;
struct TYPE_9__ {int siglock; } ;
struct TYPE_6__ {int (* setup_rt_frame ) (struct k_sigaction*,struct pt_regs*,unsigned long,int *,int *) ;int (* setup_frame ) (struct k_sigaction*,struct pt_regs*,unsigned long,int *) ;} ;


 void* EINTR ;




 int SA_NODEFER ;
 int SA_RESTART ;
 TYPE_5__* current ;
 int recalc_sigpending () ;
 scalar_t__ sig_uses_siginfo (struct k_sigaction*) ;
 int sigaddset (int *,unsigned long) ;
 int sigorsets (int *,int *,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct k_sigaction*,struct pt_regs*,unsigned long,int *,int *) ;
 int stub2 (struct k_sigaction*,struct pt_regs*,unsigned long,int *) ;

__attribute__((used)) static int handle_signal(unsigned long sig, siginfo_t *info,
 struct k_sigaction *ka, sigset_t *oldset, struct pt_regs *regs)
{
 int ret;

 switch(regs->regs[0]) {
 case 128:
 case 131:
  regs->regs[2] = EINTR;
  break;
 case 129:
  if (!(ka->sa.sa_flags & SA_RESTART)) {
   regs->regs[2] = EINTR;
   break;
  }

 case 130:
  regs->regs[7] = regs->regs[26];
  regs->cp0_epc -= 8;
 }

 regs->regs[0] = 0;

 if (sig_uses_siginfo(ka))
  ret = current->thread.abi->setup_rt_frame(ka, regs, sig, oldset, info);
 else
  ret = current->thread.abi->setup_frame(ka, regs, sig, oldset);

 spin_lock_irq(&current->sighand->siglock);
 sigorsets(&current->blocked, &current->blocked, &ka->sa.sa_mask);
 if (!(ka->sa.sa_flags & SA_NODEFER))
  sigaddset(&current->blocked, sig);
 recalc_sigpending();
 spin_unlock_irq(&current->sighand->siglock);

 return ret;
}
