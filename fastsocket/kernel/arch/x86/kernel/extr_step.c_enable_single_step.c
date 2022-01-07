
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {unsigned long flags; } ;


 int TIF_FORCED_TF ;
 int TIF_SINGLESTEP ;
 unsigned long X86_EFLAGS_TF ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ is_setting_trap_flag (struct task_struct*,struct pt_regs*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 int test_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int enable_single_step(struct task_struct *child)
{
 struct pt_regs *regs = task_pt_regs(child);
 unsigned long oflags;
 if (unlikely(test_tsk_thread_flag(child, TIF_SINGLESTEP)))
  regs->flags |= X86_EFLAGS_TF;






 set_tsk_thread_flag(child, TIF_SINGLESTEP);

 oflags = regs->flags;


 regs->flags |= X86_EFLAGS_TF;
 if (is_setting_trap_flag(child, regs)) {
  clear_tsk_thread_flag(child, TIF_FORCED_TF);
  return 0;
 }





 if (oflags & X86_EFLAGS_TF)
  return test_tsk_thread_flag(child, TIF_FORCED_TF);

 set_tsk_thread_flag(child, TIF_FORCED_TF);

 return 1;
}
