
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {struct ata_device* private_data; TYPE_1__* host; } ;
struct ata_device {int pio_mode; scalar_t__ class; int devno; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 int FTIM ;
 int IDETIM ;
 int IORDY ;
 int PPE ;
 int XFER_PIO_0 ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_word (struct pci_dev*,int ,int*) ;
 int pci_write_config_word (struct pci_dev*,int ,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void mpiix_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 int control = 0;
 int pio = adev->pio_mode - XFER_PIO_0;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 u16 idetim;
 static const
 u8 timings[][2] = { { 0, 0 },
       { 0, 0 },
       { 1, 0 },
       { 2, 1 },
       { 2, 3 }, };

 pci_read_config_word(pdev, IDETIM, &idetim);


 if (adev->class == ATA_DEV_ATA)
  control |= PPE;
 if (ata_pio_need_iordy(adev))
  control |= IORDY;
 if (pio > 1)
  control |= FTIM;


 idetim &= 0xCCEE;
 idetim &= ~(0x07 << (4 * adev->devno));
 idetim |= control << (4 * adev->devno);

 idetim |= (timings[pio][0] << 12) | (timings[pio][1] << 8);
 pci_write_config_word(pdev, IDETIM, idetim);



 ap->private_data = adev;
}
