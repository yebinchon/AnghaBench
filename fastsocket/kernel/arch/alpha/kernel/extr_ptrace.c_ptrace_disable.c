
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int ptrace_cancel_bpt (struct task_struct*) ;

void ptrace_disable(struct task_struct *child)
{
 ptrace_cancel_bpt(child);
}
