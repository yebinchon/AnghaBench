
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ per_flags; } ;
struct task_struct {TYPE_1__ thread; } ;


 int user_disable_single_step (struct task_struct*) ;

void
ptrace_disable(struct task_struct *child)
{

 child->thread.per_flags = 0;
 user_disable_single_step(child);
}
