
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; int user; struct pt_regs* frame0; scalar_t__ lr; scalar_t__ fp; struct task_struct* curr; struct pt_regs* frame; } ;
struct task_struct {TYPE_1__ thread; int * clear_child_tid; int set_child_tid; } ;
struct pt_regs {unsigned long sp; unsigned long gr15; unsigned long gr29; unsigned long gr12; struct pt_regs* next_frame; scalar_t__ gr8; } ;


 unsigned long CLONE_SETTLS ;
 scalar_t__ FRV_FRAME0_SIZE ;
 scalar_t__ THREAD_SIZE ;
 struct pt_regs* __kernel_frame0_ptr ;
 scalar_t__ ret_from_fork ;
 int save_user_regs (int ) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 scalar_t__ task_thread_info (struct task_struct*) ;

int copy_thread(unsigned long clone_flags,
  unsigned long usp, unsigned long topstk,
  struct task_struct *p, struct pt_regs *regs)
{
 struct pt_regs *childregs0, *childregs, *regs0;

 regs0 = __kernel_frame0_ptr;
 childregs0 = (struct pt_regs *)
  (task_stack_page(p) + THREAD_SIZE - FRV_FRAME0_SIZE);
 childregs = childregs0;


 *childregs0 = *regs0;

 childregs0->gr8 = 0;
 childregs0->sp = usp;
 childregs0->next_frame = ((void*)0);


 if (regs != regs0) {
  childregs--;
  *childregs = *regs;
  childregs->sp = (unsigned long) childregs0;
  childregs->next_frame = childregs0;
  childregs->gr15 = (unsigned long) task_thread_info(p);
  childregs->gr29 = (unsigned long) p;
 }

 p->set_child_tid = p->clear_child_tid = ((void*)0);

 p->thread.frame = childregs;
 p->thread.curr = p;
 p->thread.sp = (unsigned long) childregs;
 p->thread.fp = 0;
 p->thread.lr = 0;
 p->thread.pc = (unsigned long) ret_from_fork;
 p->thread.frame0 = childregs0;


 if (clone_flags & CLONE_SETTLS)
  childregs->gr29 = childregs->gr12;

 save_user_regs(p->thread.user);

 return 0;
}
