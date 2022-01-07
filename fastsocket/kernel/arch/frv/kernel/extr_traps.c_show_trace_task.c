
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sched_lr; int lr; int frame; int sp; } ;
struct task_struct {TYPE_1__ thread; } ;


 int printk (char*,int ,int ,int ,int ) ;

void show_trace_task(struct task_struct *tsk)
{
 printk("CONTEXT: stack=0x%lx frame=0x%p LR=0x%lx RET=0x%lx\n",
        tsk->thread.sp, tsk->thread.frame, tsk->thread.lr, tsk->thread.sched_lr);
}
