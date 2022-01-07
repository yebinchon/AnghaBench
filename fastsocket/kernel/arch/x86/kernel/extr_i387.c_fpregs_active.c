
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct user_regset {int n; } ;
struct task_struct {int dummy; } ;


 scalar_t__ tsk_used_math (struct task_struct*) ;

int fpregs_active(struct task_struct *target, const struct user_regset *regset)
{
 return tsk_used_math(target) ? regset->n : 0;
}
