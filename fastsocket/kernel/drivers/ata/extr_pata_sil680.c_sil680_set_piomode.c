
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int pio_mode; int devno; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_PIO_0 ;
 struct ata_device* ata_dev_pair (struct ata_device*) ;
 scalar_t__ ata_pio_need_iordy (struct ata_device*) ;
 int pci_read_config_byte (struct pci_dev*,unsigned long,int*) ;
 int pci_read_config_word (struct pci_dev*,unsigned long,int*) ;
 int pci_write_config_byte (struct pci_dev*,unsigned long,int) ;
 int pci_write_config_word (struct pci_dev*,unsigned long,int) ;
 unsigned long sil680_seldev (struct ata_port*,struct ata_device*,int) ;
 unsigned long sil680_selreg (struct ata_port*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sil680_set_piomode(struct ata_port *ap, struct ata_device *adev)
{
 static u16 speed_p[5] = { 0x328A, 0x2283, 0x1104, 0x10C3, 0x10C1 };
 static u16 speed_t[5] = { 0x328A, 0x2283, 0x1281, 0x10C3, 0x10C1 };

 unsigned long tfaddr = sil680_selreg(ap, 0x02);
 unsigned long addr = sil680_seldev(ap, adev, 0x04);
 unsigned long addr_mask = 0x80 + 4 * ap->port_no;
 struct pci_dev *pdev = to_pci_dev(ap->host->dev);
 int pio = adev->pio_mode - XFER_PIO_0;
 int lowest_pio = pio;
 int port_shift = 4 * adev->devno;
 u16 reg;
 u8 mode;

 struct ata_device *pair = ata_dev_pair(adev);

 if (pair != ((void*)0) && adev->pio_mode > pair->pio_mode)
  lowest_pio = pair->pio_mode - XFER_PIO_0;

 pci_write_config_word(pdev, addr, speed_p[pio]);
 pci_write_config_word(pdev, tfaddr, speed_t[lowest_pio]);

 pci_read_config_word(pdev, tfaddr-2, &reg);
 pci_read_config_byte(pdev, addr_mask, &mode);

 reg &= ~0x0200;
 mode &= ~(3 << port_shift);

 if (ata_pio_need_iordy(adev)) {
  reg |= 0x0200;
  mode |= 1 << port_shift;
 }
 pci_write_config_word(pdev, tfaddr-2, reg);
 pci_write_config_byte(pdev, addr_mask, mode);
}
