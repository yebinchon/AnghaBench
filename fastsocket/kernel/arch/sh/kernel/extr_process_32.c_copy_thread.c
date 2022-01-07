
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread_info {int addr_limit; } ;
struct TYPE_2__ {unsigned long sp; unsigned long pc; scalar_t__ ubc_pc; int dsp_status; int fpu; } ;
struct task_struct {TYPE_1__ thread; } ;
struct pt_regs {unsigned long* regs; unsigned long gbr; } ;


 unsigned long CLONE_SETTLS ;
 int KERNEL_DS ;
 int USER_DS ;
 int copy_to_stopped_child_used_math (struct task_struct*) ;
 struct task_struct* current ;
 scalar_t__ is_dsp_enabled (struct task_struct*) ;
 scalar_t__ ret_from_fork ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 struct thread_info* task_thread_info (struct task_struct*) ;
 int unlazy_fpu (struct task_struct*,struct pt_regs*) ;
 scalar_t__ user_mode (struct pt_regs*) ;

int copy_thread(unsigned long clone_flags, unsigned long usp,
  unsigned long unused,
  struct task_struct *p, struct pt_regs *regs)
{
 struct thread_info *ti = task_thread_info(p);
 struct pt_regs *childregs;
 childregs = task_pt_regs(p);
 *childregs = *regs;

 if (user_mode(regs)) {
  childregs->regs[15] = usp;
  ti->addr_limit = USER_DS;
 } else {
  childregs->regs[15] = (unsigned long)childregs;
  ti->addr_limit = KERNEL_DS;
 }

 if (clone_flags & CLONE_SETTLS)
  childregs->gbr = childregs->regs[0];

 childregs->regs[0] = 0;

 p->thread.sp = (unsigned long) childregs;
 p->thread.pc = (unsigned long) ret_from_fork;

 p->thread.ubc_pc = 0;

 return 0;
}
