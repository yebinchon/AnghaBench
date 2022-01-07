
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct ata_port {TYPE_1__* host; } ;
struct ata_device {unsigned int dma_mode; scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 unsigned int D0TIM ;
 unsigned int D1TIM ;
 unsigned int MDM ;
 unsigned int UDM ;
 unsigned int USD ;
 unsigned int XFER_MW_DMA_0 ;
 unsigned int XFER_UDMA_0 ;
 int pci_read_config_dword (struct pci_dev*,unsigned int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,unsigned int,unsigned int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sch_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 unsigned int dma_mode = adev->dma_mode;
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 unsigned int port = adev->devno ? D1TIM : D0TIM;
 unsigned int data;

 pci_read_config_dword(dev, port, &data);

 if (dma_mode >= XFER_UDMA_0) {

  data |= USD;
  data &= ~UDM;
  data |= (dma_mode - XFER_UDMA_0) << 16;
 } else {
  data &= ~(USD | MDM);
  data |= (dma_mode - XFER_MW_DMA_0) << 8;
 }
 pci_write_config_dword(dev, port, data);
}
