
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 unsigned long DEBUGCTLMSR_BTF ;
 int TIF_BLOCKSTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ enable_single_step (struct task_struct*) ;
 unsigned long get_debugctlmsr () ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;
 scalar_t__ test_tsk_thread_flag (struct task_struct*,int ) ;
 int update_debugctlmsr (unsigned long) ;

__attribute__((used)) static void enable_step(struct task_struct *child, bool block)
{







 if (enable_single_step(child) && block) {
  unsigned long debugctl = get_debugctlmsr();

  debugctl |= DEBUGCTLMSR_BTF;
  update_debugctlmsr(debugctl);
  set_tsk_thread_flag(child, TIF_BLOCKSTEP);
 } else if (test_tsk_thread_flag(child, TIF_BLOCKSTEP)) {
  unsigned long debugctl = get_debugctlmsr();

  debugctl &= ~DEBUGCTLMSR_BTF;
  update_debugctlmsr(debugctl);
  clear_tsk_thread_flag(child, TIF_BLOCKSTEP);
 }
}
