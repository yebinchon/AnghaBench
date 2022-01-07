
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {struct ata_device* private_data; scalar_t__ port_no; TYPE_1__* host; } ;
struct ata_device {unsigned int dma_mode; scalar_t__ class; unsigned int const pio_mode; scalar_t__ devno; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 unsigned int XFER_MW_DMA_0 ;
 unsigned int const XFER_PIO_0 ;
 unsigned int const XFER_PIO_3 ;
 unsigned int const XFER_PIO_4 ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void oldpiix_set_dmamode (struct ata_port *ap, struct ata_device *adev)
{
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 u8 idetm_port = ap->port_no ? 0x42 : 0x40;
 u16 idetm_data;

 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };







 unsigned int mwdma = adev->dma_mode - XFER_MW_DMA_0;
 unsigned int control;
 const unsigned int needed_pio[3] = {
  XFER_PIO_0, XFER_PIO_3, XFER_PIO_4
 };
 int pio = needed_pio[mwdma] - XFER_PIO_0;

 pci_read_config_word(dev, idetm_port, &idetm_data);

 control = 3;

 if (adev->class == ATA_DEV_ATA)
  control |= 4;




 if (adev->pio_mode < needed_pio[mwdma])

  control |= 8;



 if (adev->devno == 0) {
  idetm_data &= 0xCCE0;
  idetm_data |= control;
 } else {
  idetm_data &= 0xCC0E;
  idetm_data |= (control << 4);
 }
 idetm_data |= (timings[pio][0] << 12) | (timings[pio][1] << 8);
 pci_write_config_word(dev, idetm_port, idetm_data);


 ap->private_data = adev;
}
