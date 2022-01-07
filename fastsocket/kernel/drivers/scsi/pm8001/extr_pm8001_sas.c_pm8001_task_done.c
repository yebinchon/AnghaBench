
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sas_task {TYPE_1__* slow_task; } ;
struct TYPE_2__ {int completion; int timer; } ;


 int complete (int *) ;
 int del_timer (int *) ;

void pm8001_task_done(struct sas_task *task)
{
 if (!del_timer(&task->slow_task->timer))
  return;
 complete(&task->slow_task->completion);
}
