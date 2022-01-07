
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_queued_cmd {struct ata_port* ap; } ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {int lock; TYPE_1__ ioaddr; } ;


 int ata_bmdma_stop (struct ata_queued_cmd*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_sff_post_internal_cmd(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 unsigned long flags;

 spin_lock_irqsave(ap->lock, flags);

 if (ap->ioaddr.bmdma_addr)
  ata_bmdma_stop(qc);

 spin_unlock_irqrestore(ap->lock, flags);
}
