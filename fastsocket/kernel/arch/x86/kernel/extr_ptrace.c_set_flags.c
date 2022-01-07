
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;
struct pt_regs {unsigned long flags; } ;


 unsigned long FLAG_MASK ;
 int TIF_FORCED_TF ;
 unsigned long X86_EFLAGS_TF ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 struct pt_regs* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;

__attribute__((used)) static int set_flags(struct task_struct *task, unsigned long value)
{
 struct pt_regs *regs = task_pt_regs(task);






 if (value & X86_EFLAGS_TF)
  clear_tsk_thread_flag(task, TIF_FORCED_TF);
 else if (test_tsk_thread_flag(task, TIF_FORCED_TF))
  value |= X86_EFLAGS_TF;

 regs->flags = (regs->flags & ~FLAG_MASK) | (value & FLAG_MASK);

 return 0;
}
