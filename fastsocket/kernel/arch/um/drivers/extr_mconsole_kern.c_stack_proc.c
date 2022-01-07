
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct task_struct* saved_task; } ;
struct task_struct {TYPE_1__ thread; } ;


 struct task_struct* current ;
 int switch_to (struct task_struct*,struct task_struct*,struct task_struct*) ;

__attribute__((used)) static void stack_proc(void *arg)
{
 struct task_struct *from = current, *to = arg;

 to->thread.saved_task = from;
 switch_to(from, to, from);
}
