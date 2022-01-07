
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct device {int* dma_mask; } ;
struct Scsi_Host {scalar_t__ unchecked_isa_dma; } ;


 int BLK_BOUNCE_ANY ;
 int BLK_BOUNCE_ISA ;
 int PCI_DMA_BUS_IS_PHYS ;
 struct device* scsi_get_device (struct Scsi_Host*) ;

u64 scsi_calculate_bounce_limit(struct Scsi_Host *shost)
{
 struct device *host_dev;
 u64 bounce_limit = 0xffffffff;

 if (shost->unchecked_isa_dma)
  return BLK_BOUNCE_ISA;




 if (!PCI_DMA_BUS_IS_PHYS)
  return BLK_BOUNCE_ANY;

 host_dev = scsi_get_device(shost);
 if (host_dev && host_dev->dma_mask)
  bounce_limit = *host_dev->dma_mask;

 return bounce_limit;
}
