
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int h8300_disable_trace (struct task_struct*) ;

void ptrace_disable(struct task_struct *child)
{
 h8300_disable_trace(child);
}
