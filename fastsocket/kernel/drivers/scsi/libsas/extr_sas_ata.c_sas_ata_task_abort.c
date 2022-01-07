
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sas_task {struct ata_queued_cmd* uldd_task; } ;
struct request_queue {int queue_lock; } ;
struct completion {int dummy; } ;
struct ata_queued_cmd {struct completion* private_data; int err_mask; int flags; TYPE_1__* scsicmd; } ;
struct TYPE_4__ {struct request_queue* request_queue; } ;
struct TYPE_3__ {int request; TYPE_2__* device; } ;


 int AC_ERR_TIMEOUT ;
 int ATA_QCFLAG_ACTIVE ;
 int ATA_QCFLAG_FAILED ;
 int blk_abort_request (int ) ;
 int complete (struct completion*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void sas_ata_task_abort(struct sas_task *task)
{
 struct ata_queued_cmd *qc = task->uldd_task;
 struct completion *waiting;


 if (qc->scsicmd) {
  struct request_queue *q = qc->scsicmd->device->request_queue;
  unsigned long flags;

  spin_lock_irqsave(q->queue_lock, flags);
  blk_abort_request(qc->scsicmd->request);
  spin_unlock_irqrestore(q->queue_lock, flags);
  return;
 }


 qc->flags &= ~ATA_QCFLAG_ACTIVE;
 qc->flags |= ATA_QCFLAG_FAILED;
 qc->err_mask |= AC_ERR_TIMEOUT;
 waiting = qc->private_data;
 complete(waiting);
}
