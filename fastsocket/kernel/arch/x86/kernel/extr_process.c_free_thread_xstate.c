
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int xstate; } ;
struct task_struct {TYPE_1__ thread; } ;
struct fpu {int dummy; } ;


 int fpu_free (struct fpu*) ;

void free_thread_xstate(struct task_struct *tsk)
{
 fpu_free((struct fpu *)&tsk->thread.xstate);
}
