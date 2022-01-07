
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ubc_pc; } ;
struct task_struct {TYPE_1__ thread; } ;


 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 int ubc_usercnt ;

void user_disable_single_step(struct task_struct *child)
{
 clear_tsk_thread_flag(child, TIF_SINGLESTEP);
 if (child->thread.ubc_pc != 0) {
  ubc_usercnt -= 1;
  child->thread.ubc_pc = 0;
 }
}
