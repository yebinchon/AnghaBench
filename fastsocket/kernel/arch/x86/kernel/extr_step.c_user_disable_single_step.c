
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int flags; } ;


 unsigned long DEBUGCTLMSR_BTF ;
 int TIF_BLOCKSTEP ;
 int TIF_FORCED_TF ;
 int TIF_SINGLESTEP ;
 int X86_EFLAGS_TF ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 unsigned long get_debugctlmsr () ;
 TYPE_1__* task_pt_regs (struct task_struct*) ;
 scalar_t__ test_and_clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;
 int update_debugctlmsr (unsigned long) ;

void user_disable_single_step(struct task_struct *child)
{



 if (test_tsk_thread_flag(child, TIF_BLOCKSTEP)) {
  unsigned long debugctl = get_debugctlmsr();

  debugctl &= ~DEBUGCTLMSR_BTF;
  update_debugctlmsr(debugctl);
  clear_tsk_thread_flag(child, TIF_BLOCKSTEP);
 }


 clear_tsk_thread_flag(child, TIF_SINGLESTEP);


 if (test_and_clear_tsk_thread_flag(child, TIF_FORCED_TF))
  task_pt_regs(child)->flags &= ~X86_EFLAGS_TF;
}
