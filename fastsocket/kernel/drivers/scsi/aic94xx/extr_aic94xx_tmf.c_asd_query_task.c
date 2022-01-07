
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int LUN; } ;
struct sas_task {TYPE_1__ ssp_task; int dev; struct asd_ascb* lldd_task; } ;
struct asd_ascb {int tc_index; } ;


 int TMF_QUERY_TASK ;
 int TMF_RESP_FUNC_COMPLETE ;
 int asd_initiate_ssp_tmf (int ,int ,int ,int) ;

int asd_query_task(struct sas_task *task)
{
 struct asd_ascb *ascb = task->lldd_task;
 int index;

 if (ascb) {
  index = ascb->tc_index;
  return asd_initiate_ssp_tmf(task->dev, task->ssp_task.LUN,
         TMF_QUERY_TASK, index);
 }
 return TMF_RESP_FUNC_COMPLETE;
}
