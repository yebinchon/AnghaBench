
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fpu {int dummy; } ;


 scalar_t__ HAVE_HWFP ;
 struct task_struct* current ;
 int fpu_alloc (struct fpu*) ;
 int fpu_finit (struct fpu*) ;
 int set_stopped_child_used_math (struct task_struct*) ;
 scalar_t__ tsk_used_math (struct task_struct*) ;
 int unlazy_fpu (struct task_struct*) ;

int init_fpu(struct task_struct *tsk)
{
 int ret;

 if (tsk_used_math(tsk)) {
  if (HAVE_HWFP && tsk == current)
   unlazy_fpu(tsk);
  return 0;
 }




 ret = fpu_alloc((struct fpu *)&tsk->thread.xstate);
 if (ret)
  return ret;

 fpu_finit((struct fpu *)&tsk->thread.xstate);

 set_stopped_child_used_math(tsk);
 return 0;
}
