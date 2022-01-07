
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct ata_timing {int recover; int active; } ;
struct ata_port {int port_no; TYPE_1__* host; } ;
struct ata_device {int devno; int pio_mode; } ;
struct TYPE_2__ {int dev; } ;


 int XFER_MW_DMA_0 ;
 int ata_pio_need_iordy (struct ata_device*) ;
 int ata_timing_compute (struct ata_device*,int ,struct ata_timing*,unsigned long,int ) ;
 int clamp_val (int ,int,int) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;
 int udelay (int) ;

__attribute__((used)) static void ns87415_set_mode(struct ata_port *ap, struct ata_device *adev, u8 mode)
{
 struct pci_dev *dev = to_pci_dev(ap->host->dev);
 int unit = 2 * ap->port_no + adev->devno;
 int timing = 0x44 + 2 * unit;
 unsigned long T = 1000000000 / 33333;
 struct ata_timing t;
 u16 clocking;
 u8 iordy;
 u8 status;




 ata_timing_compute(adev, adev->pio_mode, &t, T, 0);

 clocking = 17 - clamp_val(t.active, 2, 17);
 clocking |= (16 - clamp_val(t.recover, 1, 16)) << 4;

 clocking |= (clocking << 8);
 pci_write_config_word(dev, timing, clocking);


 pci_read_config_byte(dev, 0x42, &iordy);
 iordy &= ~(1 << (4 + unit));
 if (mode >= XFER_MW_DMA_0 || !ata_pio_need_iordy(adev))
  iordy |= (1 << (4 + unit));




 pci_read_config_byte(dev, 0x43, &status);
 while (status & 0x03) {
  udelay(1);
  pci_read_config_byte(dev, 0x43, &status);
 }


 pci_write_config_byte(dev, 0x42, iordy);



}
