
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_cmnd {int request; TYPE_1__* device; } ;
struct TYPE_4__ {int data; int (* function ) (int ) ;} ;
struct sas_task_slow {TYPE_2__ timer; } ;
struct sas_task {int dev; struct sas_task_slow* slow_task; struct scsi_cmnd* uldd_task; } ;
struct request_queue {int queue_lock; } ;
struct TYPE_3__ {struct request_queue* request_queue; } ;


 int blk_abort_request (int ) ;
 int del_timer (TYPE_2__*) ;
 scalar_t__ dev_is_sata (int ) ;
 int sas_ata_task_abort (struct sas_task*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 int stub1 (int ) ;

void sas_task_abort(struct sas_task *task)
{
 struct scsi_cmnd *sc = task->uldd_task;


 if (!sc) {
  struct sas_task_slow *slow = task->slow_task;

  if (!slow)
   return;
  if (!del_timer(&slow->timer))
   return;
  slow->timer.function(slow->timer.data);
  return;
 }

 if (dev_is_sata(task->dev)) {
  sas_ata_task_abort(task);
 } else {
  struct request_queue *q = sc->device->request_queue;
  unsigned long flags;

  spin_lock_irqsave(q->queue_lock, flags);
  blk_abort_request(sc->request);
  spin_unlock_irqrestore(q->queue_lock, flags);
 }
}
