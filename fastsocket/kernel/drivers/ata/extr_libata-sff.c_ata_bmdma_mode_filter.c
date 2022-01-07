
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ata_device {TYPE_3__* link; } ;
struct TYPE_6__ {TYPE_2__* ap; } ;
struct TYPE_4__ {int * bmdma_addr; } ;
struct TYPE_5__ {TYPE_1__ ioaddr; } ;


 unsigned long ATA_MASK_MWDMA ;
 unsigned long ATA_MASK_UDMA ;

unsigned long ata_bmdma_mode_filter(struct ata_device *adev,
        unsigned long xfer_mask)
{



 if (adev->link->ap->ioaddr.bmdma_addr == ((void*)0))
  xfer_mask &= ~(ATA_MASK_MWDMA | ATA_MASK_UDMA);
 return xfer_mask;
}
