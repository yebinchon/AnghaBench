
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned long usp; unsigned long ksp; scalar_t__* fpstate; int fs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct switch_stack {unsigned long retpc; } ;
struct pt_regs {scalar_t__ d0; } ;
struct TYPE_4__ {int seg; } ;


 int FPU_IS_EMU ;
 scalar_t__ THREAD_SIZE ;
 TYPE_2__ get_fs () ;
 scalar_t__ ret_from_fork ;
 scalar_t__ task_stack_page (struct task_struct*) ;

int copy_thread(unsigned long clone_flags,
  unsigned long usp, unsigned long topstk,
  struct task_struct * p, struct pt_regs * regs)
{
 struct pt_regs * childregs;
 struct switch_stack * childstack, *stack;
 unsigned long *retp;

 childregs = (struct pt_regs *) (task_stack_page(p) + THREAD_SIZE) - 1;

 *childregs = *regs;
 childregs->d0 = 0;

 retp = ((unsigned long *) regs);
 stack = ((struct switch_stack *) retp) - 1;

 childstack = ((struct switch_stack *) childregs) - 1;
 *childstack = *stack;
 childstack->retpc = (unsigned long)ret_from_fork;

 p->thread.usp = usp;
 p->thread.ksp = (unsigned long)childstack;




 p->thread.fs = get_fs().seg;
 return 0;
}
