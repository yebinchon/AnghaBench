
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request_pm_state {scalar_t__ pm_step; } ;
struct request {scalar_t__ cmd_type; struct request_pm_state* special; } ;
struct TYPE_6__ {TYPE_1__* hwif; int dev_flags; int name; struct request_queue* queue; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int * rq; } ;


 int BUG () ;
 int IDE_DFLAG_BLOCKED ;
 scalar_t__ IDE_PM_COMPLETED ;
 scalar_t__ REQ_TYPE_PM_SUSPEND ;
 scalar_t__ blk_end_request (struct request*,int ,int ) ;
 int blk_stop_queue (struct request_queue*) ;
 int ide_complete_power_step (TYPE_2__*,struct request*) ;
 int printk (char*,int ,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ide_complete_pm_rq(ide_drive_t *drive, struct request *rq)
{
 struct request_queue *q = drive->queue;
 struct request_pm_state *pm = rq->special;
 unsigned long flags;

 ide_complete_power_step(drive, rq);
 if (pm->pm_step != IDE_PM_COMPLETED)
  return;





 spin_lock_irqsave(q->queue_lock, flags);
 if (rq->cmd_type == REQ_TYPE_PM_SUSPEND)
  blk_stop_queue(q);
 else
  drive->dev_flags &= ~IDE_DFLAG_BLOCKED;
 spin_unlock_irqrestore(q->queue_lock, flags);

 drive->hwif->rq = ((void*)0);

 if (blk_end_request(rq, 0, 0))
  BUG();
}
