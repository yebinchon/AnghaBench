
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int ptrace; } ;


 int PT_SINGLESTEP ;

__attribute__((used)) static inline void single_step_enable(struct task_struct *task)
{
 task->ptrace |= PT_SINGLESTEP;
}
