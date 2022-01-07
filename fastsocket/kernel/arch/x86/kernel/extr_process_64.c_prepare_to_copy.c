
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_struct {int dummy; } ;


 int unlazy_fpu (struct task_struct*) ;

void prepare_to_copy(struct task_struct *tsk)
{
 unlazy_fpu(tsk);
}
