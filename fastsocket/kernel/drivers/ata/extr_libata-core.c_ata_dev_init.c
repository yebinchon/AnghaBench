
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int lock; } ;
struct ata_link {scalar_t__ sata_spd; int hw_sata_spd_limit; int sata_spd_limit; struct ata_port* ap; } ;
struct ata_device {void* udma_mask; void* mwdma_mask; void* pio_mask; scalar_t__ horkage; int flags; } ;


 int ATA_DEVICE_CLEAR_BEGIN ;
 int ATA_DEVICE_CLEAR_END ;
 int ATA_DFLAG_INIT_MASK ;
 void* UINT_MAX ;
 struct ata_link* ata_dev_phys_link (struct ata_device*) ;
 int memset (void*,int ,int) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void ata_dev_init(struct ata_device *dev)
{
 struct ata_link *link = ata_dev_phys_link(dev);
 struct ata_port *ap = link->ap;
 unsigned long flags;


 link->sata_spd_limit = link->hw_sata_spd_limit;
 link->sata_spd = 0;





 spin_lock_irqsave(ap->lock, flags);
 dev->flags &= ~ATA_DFLAG_INIT_MASK;
 dev->horkage = 0;
 spin_unlock_irqrestore(ap->lock, flags);

 memset((void *)dev + ATA_DEVICE_CLEAR_BEGIN, 0,
        ATA_DEVICE_CLEAR_END - ATA_DEVICE_CLEAR_BEGIN);
 dev->pio_mask = UINT_MAX;
 dev->mwdma_mask = UINT_MAX;
 dev->udma_mask = UINT_MAX;
}
