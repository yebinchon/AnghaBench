
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_port {int port_no; } ;
struct ata_device {int dma_mode; } ;


 int CY82_INDEX_CHANNEL0 ;
 int CY82_INDEX_TIMEOUT ;
 int XFER_MW_DMA_0 ;
 int outb (int,int) ;

__attribute__((used)) static void cy82c693_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 int reg = CY82_INDEX_CHANNEL0 + ap->port_no;


 outb(reg, 0x22);
 outb(adev->dma_mode - XFER_MW_DMA_0, 0x23);


 outb(CY82_INDEX_TIMEOUT, 0x22);
 outb(0x50, 0x23);
}
