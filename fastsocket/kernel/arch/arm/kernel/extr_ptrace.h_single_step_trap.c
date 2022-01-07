
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int ptrace; } ;


 int PT_SINGLESTEP ;
 int SIGTRAP ;
 int ptrace_cancel_bpt (struct task_struct*) ;
 int send_sig (int ,struct task_struct*,int) ;

__attribute__((used)) static inline void single_step_trap(struct task_struct *task)
{
 if (task->ptrace & PT_SINGLESTEP) {
  ptrace_cancel_bpt(task);
  send_sig(SIGTRAP, task, 1);
 }
}
