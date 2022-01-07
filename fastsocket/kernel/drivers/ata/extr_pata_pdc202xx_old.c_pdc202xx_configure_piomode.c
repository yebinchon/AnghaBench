
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; scalar_t__ class; } ;
struct TYPE_2__ {int dev; } ;


 scalar_t__ ATA_DEV_ATA ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void pdc202xx_configure_piomode(struct ata_port *ap, struct ata_device *adev, int pio)
{
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int port = 0x60 + 8 * ap->port_no + 4 * adev->devno;
 static u16 pio_timing[5] = {
  0x0913, 0x050C , 0x0308, 0x0206, 0x0104
 };
 u8 r_ap, r_bp;

 pci_read_config_byte(pdev, port, &r_ap);
 pci_read_config_byte(pdev, port + 1, &r_bp);
 r_ap &= ~0x3F;
 r_bp &= ~0x1F;
 r_ap |= (pio_timing[pio] >> 8);
 r_bp |= (pio_timing[pio] & 0xFF);

 if (ata_pio_need_iordy(adev))
  r_ap |= 0x20;
 if (adev->class == ATA_DEV_ATA)
  r_ap |= 0x10;
 pci_write_config_byte(pdev, port, r_ap);
 pci_write_config_byte(pdev, port + 1, r_bp);
}
