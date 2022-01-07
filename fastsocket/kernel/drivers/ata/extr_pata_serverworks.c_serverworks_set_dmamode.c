
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ dma_mode; } ;
struct TYPE_2__ {int dev; } ;


 size_t XFER_MW_DMA_0 ;
 scalar_t__ XFER_UDMA_0 ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int const) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void serverworks_set_dmamode(struct ata_port *ap, struct ata_device *adev)
{
 static const u8 dma_mode[] = { 0x77, 0x21, 0x20 };
 int offset = 1 + 2 * ap->port_no - adev->devno;
 int devbits = 2 * ap->port_no + adev->devno;
 u8 ultra;
 u8 ultra_cfg;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);

 pci_read_config_byte(pdev, 0x54, &ultra_cfg);
 pci_read_config_byte(pdev, 0x56 + ap->port_no, &ultra);
 ultra &= ~(0x0F << (adev->devno * 4));

 if (adev->dma_mode >= XFER_UDMA_0) {
  pci_write_config_byte(pdev, 0x44 + offset, 0x20);

  ultra |= (adev->dma_mode - XFER_UDMA_0)
     << (adev->devno * 4);
  ultra_cfg |= (1 << devbits);
 } else {
  pci_write_config_byte(pdev, 0x44 + offset,
   dma_mode[adev->dma_mode - XFER_MW_DMA_0]);
  ultra_cfg &= ~(1 << devbits);
 }
 pci_write_config_byte(pdev, 0x56 + ap->port_no, ultra);
 pci_write_config_byte(pdev, 0x54, ultra_cfg);
}
