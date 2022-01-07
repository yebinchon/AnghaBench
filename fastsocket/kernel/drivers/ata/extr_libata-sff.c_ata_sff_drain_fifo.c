
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ata_queued_cmd {scalar_t__ dma_dir; struct ata_port* ap; } ;
struct TYPE_4__ {int data_addr; } ;
struct ata_port {TYPE_2__ ioaddr; TYPE_1__* ops; } ;
struct TYPE_3__ {int (* sff_check_status ) (struct ata_port*) ;} ;


 int ATA_DRQ ;
 scalar_t__ DMA_TO_DEVICE ;
 int KERN_DEBUG ;
 int ata_port_printk (struct ata_port*,int ,char*,int) ;
 int ioread16 (int ) ;
 int stub1 (struct ata_port*) ;

void ata_sff_drain_fifo(struct ata_queued_cmd *qc)
{
 int count;
 struct ata_port *ap;


 if (qc == ((void*)0) || qc->dma_dir == DMA_TO_DEVICE)
  return;

 ap = qc->ap;

 for (count = 0; (ap->ops->sff_check_status(ap) & ATA_DRQ)
      && count < 32768; count++)
  ioread16(ap->ioaddr.data_addr);


 if (count)
  ata_port_printk(ap, KERN_DEBUG,
   "drained %d bytes to clear DRQ.\n", count);

}
