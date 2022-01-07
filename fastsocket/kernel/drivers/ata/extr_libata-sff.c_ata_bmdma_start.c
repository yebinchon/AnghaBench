
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct ata_queued_cmd {struct ata_port* ap; } ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 scalar_t__ ATA_DMA_CMD ;
 int ATA_DMA_START ;
 int ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;

void ata_bmdma_start(struct ata_queued_cmd *qc)
{
 struct ata_port *ap = qc->ap;
 u8 dmactl;


 dmactl = ioread8(ap->ioaddr.bmdma_addr + ATA_DMA_CMD);
 iowrite8(dmactl | ATA_DMA_START, ap->ioaddr.bmdma_addr + ATA_DMA_CMD);
}
