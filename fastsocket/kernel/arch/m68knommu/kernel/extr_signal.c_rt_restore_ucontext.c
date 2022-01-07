
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int version; int * gregs; } ;
struct ucontext {int uc_stack; TYPE_2__ uc_mcontext; } ;
struct switch_stack {int d6; int d7; int a3; int a4; int a5; int a6; } ;
struct pt_regs {int d0; int d1; int d2; int d3; int d4; int d5; int a0; int a1; int a2; int pc; int sr; int orig_d0; int format; int vector; } ;
typedef int greg_t ;
struct TYPE_4__ {int fn; } ;
struct TYPE_6__ {TYPE_1__ restart_block; } ;


 int EFAULT ;
 int MCONTEXT_VERSION ;
 int __get_user (int,int *) ;
 TYPE_3__* current_thread_info () ;
 int do_no_restart_syscall ;
 int do_sigaltstack (int *,int *,unsigned long) ;
 int wrusp (unsigned long) ;

__attribute__((used)) static inline int
rt_restore_ucontext(struct pt_regs *regs, struct switch_stack *sw,
      struct ucontext *uc, int *pd0)
{
 int temp;
 greg_t *gregs = uc->uc_mcontext.gregs;
 unsigned long usp;
 int err;


 current_thread_info()->restart_block.fn = do_no_restart_syscall;

 err = __get_user(temp, &uc->uc_mcontext.version);
 if (temp != MCONTEXT_VERSION)
  goto badframe;

 err |= __get_user(regs->d0, &gregs[0]);
 err |= __get_user(regs->d1, &gregs[1]);
 err |= __get_user(regs->d2, &gregs[2]);
 err |= __get_user(regs->d3, &gregs[3]);
 err |= __get_user(regs->d4, &gregs[4]);
 err |= __get_user(regs->d5, &gregs[5]);
 err |= __get_user(sw->d6, &gregs[6]);
 err |= __get_user(sw->d7, &gregs[7]);
 err |= __get_user(regs->a0, &gregs[8]);
 err |= __get_user(regs->a1, &gregs[9]);
 err |= __get_user(regs->a2, &gregs[10]);
 err |= __get_user(sw->a3, &gregs[11]);
 err |= __get_user(sw->a4, &gregs[12]);
 err |= __get_user(sw->a5, &gregs[13]);
 err |= __get_user(sw->a6, &gregs[14]);
 err |= __get_user(usp, &gregs[15]);
 wrusp(usp);
 err |= __get_user(regs->pc, &gregs[16]);
 err |= __get_user(temp, &gregs[17]);
 regs->sr = (regs->sr & 0xff00) | (temp & 0xff);
 regs->orig_d0 = -1;
 regs->format = temp >> 12;
 regs->vector = temp & 0xfff;

 if (do_sigaltstack(&uc->uc_stack, ((void*)0), usp) == -EFAULT)
  goto badframe;

 *pd0 = regs->d0;
 return err;

badframe:
 return 1;
}
