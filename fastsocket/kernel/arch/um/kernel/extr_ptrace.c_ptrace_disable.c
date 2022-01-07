
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int set_singlestepping (struct task_struct*,int ) ;

void ptrace_disable(struct task_struct *child)
{
 set_singlestepping(child,0);
}
