
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_core {scalar_t__ task_queue_size; int queue_thread; int task_queue_lock; int task_queue; } ;
struct sas_task {int list; TYPE_2__* dev; } ;
struct sas_ha_struct {scalar_t__ lldd_queue_size; struct scsi_core core; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {struct sas_ha_struct* ha; } ;


 int LIST_HEAD (int ) ;
 int SAS_QUEUE_FULL ;
 int list ;
 int list_add_tail (int *,int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int wake_up_process (int ) ;

int sas_queue_up(struct sas_task *task)
{
 struct sas_ha_struct *sas_ha = task->dev->port->ha;
 struct scsi_core *core = &sas_ha->core;
 unsigned long flags;
 LIST_HEAD(list);

 spin_lock_irqsave(&core->task_queue_lock, flags);
 if (sas_ha->lldd_queue_size < core->task_queue_size + 1) {
  spin_unlock_irqrestore(&core->task_queue_lock, flags);
  return -SAS_QUEUE_FULL;
 }
 list_add_tail(&task->list, &core->task_queue);
 core->task_queue_size += 1;
 spin_unlock_irqrestore(&core->task_queue_lock, flags);
 wake_up_process(core->queue_thread);

 return 0;
}
