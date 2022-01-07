
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;


 scalar_t__ ATA_DMA_STATUS ;
 int ioread8 (scalar_t__) ;

u8 ata_bmdma_status(struct ata_port *ap)
{
 return ioread8(ap->ioaddr.bmdma_addr + ATA_DMA_STATUS);
}
