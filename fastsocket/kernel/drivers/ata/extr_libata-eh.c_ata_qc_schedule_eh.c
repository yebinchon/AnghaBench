
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct ata_queued_cmd {TYPE_2__* scsicmd; int flags; struct ata_port* ap; } ;
struct ata_port {TYPE_3__* ops; } ;
struct TYPE_6__ {int error_handler; } ;
struct TYPE_5__ {int request; TYPE_1__* device; } ;
struct TYPE_4__ {struct request_queue* request_queue; } ;


 int ATA_QCFLAG_FAILED ;
 int WARN_ON (int) ;
 int ata_eh_set_pending (struct ata_port*,int) ;
 int blk_abort_request (int ) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_qc_schedule_eh(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 struct request_queue *q = qc->scsicmd->device->request_queue;
 unsigned long flags;

 WARN_ON(!ap->ops->error_handler);

 qc->flags |= ATA_QCFLAG_FAILED;
 ata_eh_set_pending(ap, 1);






 spin_lock_irqsave(q->queue_lock, flags);
 blk_abort_request(qc->scsicmd->request);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
