
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_task {int task_state_flags; TYPE_1__* slow_task; int task_state_lock; } ;
struct TYPE_2__ {int completion; } ;


 int SAS_TASK_STATE_ABORTED ;
 int SAS_TASK_STATE_DONE ;
 int complete (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void smp_task_timedout(unsigned long _task)
{
 struct sas_task *task = (void *) _task;
 unsigned long flags;

 spin_lock_irqsave(&task->task_state_lock, flags);
 if (!(task->task_state_flags & SAS_TASK_STATE_DONE))
  task->task_state_flags |= SAS_TASK_STATE_ABORTED;
 spin_unlock_irqrestore(&task->task_state_lock, flags);

 complete(&task->slow_task->completion);
}
