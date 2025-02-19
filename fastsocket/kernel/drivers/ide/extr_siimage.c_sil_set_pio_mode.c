
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_10__ {int host_flags; scalar_t__ channel; scalar_t__ hwif_data; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_11__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int IDE_HFLAG_MMIO ;
 scalar_t__ ide_get_best_pio_mode (TYPE_2__*,int,int) ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;
 scalar_t__ ide_pio_need_iordy (TYPE_2__*,scalar_t__) ;
 unsigned long siimage_seldev (TYPE_2__*,int) ;
 unsigned long siimage_selreg (TYPE_1__*,int) ;
 int sil_ioread16 (struct pci_dev*,unsigned long) ;
 scalar_t__ sil_ioread8 (struct pci_dev*,scalar_t__) ;
 int sil_iowrite16 (struct pci_dev*,int,unsigned long) ;
 int sil_iowrite8 (struct pci_dev*,scalar_t__,scalar_t__) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sil_set_pio_mode(ide_drive_t *drive, u8 pio)
{
 static const u16 tf_speed[] = { 0x328a, 0x2283, 0x1281, 0x10c3, 0x10c1 };
 static const u16 data_speed[] = { 0x328a, 0x2283, 0x1104, 0x10c3, 0x10c1 };

 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 ide_drive_t *pair = ide_get_pair_dev(drive);
 u32 speedt = 0;
 u16 speedp = 0;
 unsigned long addr = siimage_seldev(drive, 0x04);
 unsigned long tfaddr = siimage_selreg(hwif, 0x02);
 unsigned long base = (unsigned long)hwif->hwif_data;
 u8 tf_pio = pio;
 u8 mmio = (hwif->host_flags & IDE_HFLAG_MMIO) ? 1 : 0;
 u8 addr_mask = hwif->channel ? (mmio ? 0xF4 : 0x84)
      : (mmio ? 0xB4 : 0x80);
 u8 mode = 0;
 u8 unit = drive->dn & 1;


 if (pair) {
  u8 pair_pio = ide_get_best_pio_mode(pair, 255, 4);

  if (pair_pio < tf_pio)
   tf_pio = pair_pio;
 }


 speedp = data_speed[pio];
 speedt = tf_speed[tf_pio];

 sil_iowrite16(dev, speedp, addr);
 sil_iowrite16(dev, speedt, tfaddr);


 speedp = sil_ioread16(dev, tfaddr - 2);
 speedp &= ~0x200;

 mode = sil_ioread8(dev, base + addr_mask);
 mode &= ~(unit ? 0x30 : 0x03);

 if (ide_pio_need_iordy(drive, pio)) {
  speedp |= 0x200;
  mode |= unit ? 0x10 : 0x01;
 }

 sil_iowrite16(dev, speedp, tfaddr - 2);
 sil_iowrite8(dev, mode, base + addr_mask);
}
