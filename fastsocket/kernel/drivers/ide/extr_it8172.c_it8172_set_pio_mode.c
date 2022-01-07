
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; scalar_t__ media; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ide_disk ;
 scalar_t__ ide_pio_need_iordy (TYPE_2__*,int const) ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_dword (struct pci_dev*,int,int) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it8172_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u16 drive_enables;
 u32 drive_timing;







 static const u8 timings[] = { 0x3f, 0x3c, 0x1b, 0x12, 0x0a };

 pci_read_config_word(dev, 0x40, &drive_enables);
 pci_read_config_dword(dev, 0x44, &drive_timing);






 drive_enables |= 0x4000;

 drive_enables &= drive->dn ? 0xc006 : 0xc060;
 if (drive->media == ide_disk)

  drive_enables |= 0x0004 << (drive->dn * 4);
 if (ide_pio_need_iordy(drive, pio))

  drive_enables |= 0x0002 << (drive->dn * 4);

 drive_timing &= drive->dn ? 0x00003f00 : 0x000fc000;
 drive_timing |= timings[pio] << (drive->dn * 6 + 8);

 pci_write_config_word(dev, 0x40, drive_enables);
 pci_write_config_dword(dev, 0x44, drive_timing);
}
