
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_device {struct request_queue* request_queue; int host; } ;
struct request_queue {scalar_t__ dma_drain_size; int * dma_drain_buffer; } ;
struct ata_port {int lock; TYPE_1__* ops; } ;
struct ata_device {int flags; int * sdev; } ;
struct TYPE_2__ {int error_handler; } ;


 int ATA_DFLAG_DETACH ;
 struct ata_device* __ata_scsi_find_dev (struct ata_port*,struct scsi_device*) ;
 int ata_port_schedule_eh (struct ata_port*) ;
 struct ata_port* ata_shost_to_port (int ) ;
 int kfree (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_scsi_slave_destroy(struct scsi_device *sdev)
{
 struct ata_port *ap = ata_shost_to_port(sdev->host);
 struct request_queue *q = sdev->request_queue;
 unsigned long flags;
 struct ata_device *dev;

 if (!ap->ops->error_handler)
  return;

 spin_lock_irqsave(ap->lock, flags);
 dev = __ata_scsi_find_dev(ap, sdev);
 if (dev && dev->sdev) {

  dev->sdev = ((void*)0);
  dev->flags |= ATA_DFLAG_DETACH;
  ata_port_schedule_eh(ap);
 }
 spin_unlock_irqrestore(ap->lock, flags);

 kfree(q->dma_drain_buffer);
 q->dma_drain_buffer = ((void*)0);
 q->dma_drain_size = 0;
}
