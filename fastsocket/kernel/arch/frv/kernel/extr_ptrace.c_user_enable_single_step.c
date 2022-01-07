
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* frame0; } ;
struct task_struct {TYPE_2__ thread; } ;
struct TYPE_3__ {int __status; } ;


 int REG__STATUS_STEP ;

void user_enable_single_step(struct task_struct *child)
{
 child->thread.frame0->__status |= REG__STATUS_STEP;
}
