
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ single_step; } ;
struct TYPE_4__ {TYPE_1__ per_info; } ;
struct task_struct {TYPE_2__ thread; } ;


 int FixPerRegisters (struct task_struct*) ;

void user_disable_single_step(struct task_struct *task)
{
 task->thread.per_info.single_step = 0;
 FixPerRegisters(task);
}
