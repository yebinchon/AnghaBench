
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; unsigned long ksp; } ;
struct task_struct {TYPE_1__ thread; int * clear_child_tid; int set_child_tid; } ;
struct switch_stack {unsigned long return_ip; scalar_t__ r9; } ;
struct pt_regs {scalar_t__ r10; } ;


 int printk (char*,struct pt_regs*) ;
 scalar_t__ ret_from_fork ;
 int show_registers (struct pt_regs*) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long unused,
  struct task_struct *p, struct pt_regs *regs)
{
 struct pt_regs * childregs;
 struct switch_stack *swstack;





 childregs = task_pt_regs(p);

 *childregs = *regs;

        p->set_child_tid = p->clear_child_tid = ((void*)0);

        childregs->r10 = 0;



 swstack = ((struct switch_stack *)childregs) - 1;

 swstack->r9 = 0;



 swstack->return_ip = (unsigned long) ret_from_fork;



 p->thread.usp = usp;



 p->thread.ksp = (unsigned long) swstack;






 return 0;
}
