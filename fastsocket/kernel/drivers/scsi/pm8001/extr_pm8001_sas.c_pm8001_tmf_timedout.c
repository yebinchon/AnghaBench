
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_task {TYPE_1__* slow_task; int task_state_flags; } ;
struct TYPE_2__ {int completion; } ;


 int SAS_TASK_STATE_ABORTED ;
 int complete (int *) ;

__attribute__((used)) static void pm8001_tmf_timedout(unsigned long data)
{
 struct sas_task *task = (struct sas_task *)data;

 task->task_state_flags |= SAS_TASK_STATE_ABORTED;
 complete(&task->slow_task->completion);
}
