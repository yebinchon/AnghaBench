
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long sp; unsigned long pc; struct pt_regs* uregs; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {int sr; void** regs; } ;


 int SR_FD ;
 unsigned long THREAD_SIZE ;
 int * current ;
 int disable_fpu () ;
 int enable_fpu () ;
 int * last_task_used_math ;
 void* neff_sign_extend (unsigned long) ;
 scalar_t__ ret_from_fork ;
 int save_fpu (int *,struct pt_regs*) ;
 scalar_t__ task_stack_page (struct task_struct*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long unused,
  struct task_struct *p, struct pt_regs *regs)
{
 struct pt_regs *childregs;
 childregs = (struct pt_regs *)(THREAD_SIZE + task_stack_page(p)) - 1;

 *childregs = *regs;







 if (user_mode(regs)) {
  childregs->regs[15] = neff_sign_extend(usp);
  p->thread.uregs = childregs;
 } else {
  childregs->regs[15] =
   neff_sign_extend((unsigned long)task_stack_page(p) +
      THREAD_SIZE);
 }

 childregs->regs[9] = 0;
 childregs->sr |= SR_FD;

 p->thread.sp = (unsigned long) childregs;
 p->thread.pc = (unsigned long) ret_from_fork;

 return 0;
}
