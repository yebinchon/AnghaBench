
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {scalar_t__ bmdma_addr; } ;
struct ata_port {TYPE_1__ ioaddr; } ;
struct ata_device {int devno; } ;


 int ioread8 (scalar_t__) ;
 int iowrite8 (int,scalar_t__) ;

__attribute__((used)) static void cs5520_enable_dma(struct ata_port *ap, struct ata_device *adev)
{

 u8 reg = ioread8(ap->ioaddr.bmdma_addr + 0x02);
 reg |= 1<<(adev->devno + 5);
 iowrite8(reg, ap->ioaddr.bmdma_addr + 0x02);
}
