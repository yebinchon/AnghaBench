
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long usp; unsigned long ksp; int flags; unsigned long unique; } ;
struct thread_info {TYPE_1__ pcb; } ;
struct task_struct {int dummy; } ;
struct switch_stack {unsigned long r26; } ;
struct pt_regs {int ps; unsigned long r20; scalar_t__ r19; scalar_t__ r0; } ;


 unsigned long CLONE_SETTLS ;
 int PAGE_SIZE ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;

int
copy_thread(unsigned long clone_flags, unsigned long usp,
     unsigned long unused,
     struct task_struct * p, struct pt_regs * regs)
{
 extern void ret_from_fork(void);

 struct thread_info *childti = task_thread_info(p);
 struct pt_regs * childregs;
 struct switch_stack * childstack, *stack;
 unsigned long stack_offset, settls;

 stack_offset = PAGE_SIZE - sizeof(struct pt_regs);
 if (!(regs->ps & 8))
  stack_offset = (PAGE_SIZE-1) & (unsigned long) regs;
 childregs = (struct pt_regs *)
   (stack_offset + PAGE_SIZE + task_stack_page(p));

 *childregs = *regs;
 settls = regs->r20;
 childregs->r0 = 0;
 childregs->r19 = 0;
 childregs->r20 = 1;
 regs->r20 = 0;
 stack = ((struct switch_stack *) regs) - 1;
 childstack = ((struct switch_stack *) childregs) - 1;
 *childstack = *stack;
 childstack->r26 = (unsigned long) ret_from_fork;
 childti->pcb.usp = usp;
 childti->pcb.ksp = (unsigned long) childstack;
 childti->pcb.flags = 1;
 if (clone_flags & CLONE_SETTLS)
  childti->pcb.unique = settls;

 return 0;
}
