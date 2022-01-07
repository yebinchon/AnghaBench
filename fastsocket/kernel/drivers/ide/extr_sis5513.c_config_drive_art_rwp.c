
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; scalar_t__ media; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 scalar_t__ ide_disk ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void config_drive_art_rwp(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u8 reg4bh = 0;
 u8 rw_prefetch = 0;

 pci_read_config_byte(dev, 0x4b, &reg4bh);

 rw_prefetch = reg4bh & ~(0x11 << drive->dn);

 if (drive->media == ide_disk)
  rw_prefetch |= 0x11 << drive->dn;

 if (reg4bh != rw_prefetch)
  pci_write_config_byte(dev, 0x4b, rw_prefetch);
}
