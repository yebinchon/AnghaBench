
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int enable_step (struct task_struct*,int ) ;

void user_enable_single_step(struct task_struct *child)
{
 enable_step(child, 0);
}
