
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct TYPE_2__ {int t; scalar_t__ l; scalar_t__ h; scalar_t__ r; } ;


 int TIF_BLOCKSTEP ;
 int TIF_SINGLESTEP ;
 int clear_tsk_thread_flag (struct task_struct*,int ) ;
 TYPE_1__* pa_psw (struct task_struct*) ;
 int set_tsk_thread_flag (struct task_struct*,int ) ;

void user_enable_block_step(struct task_struct *task)
{
 clear_tsk_thread_flag(task, TIF_SINGLESTEP);
 set_tsk_thread_flag(task, TIF_BLOCKSTEP);


 pa_psw(task)->r = 0;
 pa_psw(task)->t = 1;
 pa_psw(task)->h = 0;
 pa_psw(task)->l = 0;
}
