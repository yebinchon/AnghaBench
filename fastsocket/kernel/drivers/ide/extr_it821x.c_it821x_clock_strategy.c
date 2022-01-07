
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct it821x_dev {int** want; int clock_mode; scalar_t__* udma; int * pio; } ;
struct TYPE_9__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_10__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int ATA_50 ;
 int ATA_66 ;
 int ATA_ANY ;
 scalar_t__ UDMA_OFF ;
 struct it821x_dev* ide_get_hwifdata (TYPE_1__*) ;
 TYPE_2__* ide_get_pair_dev (TYPE_2__*) ;
 int it821x_program (TYPE_2__*,int ) ;
 int it821x_program_udma (TYPE_2__*,scalar_t__) ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void it821x_clock_strategy(ide_drive_t *drive)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 struct it821x_dev *itdev = ide_get_hwifdata(hwif);
 ide_drive_t *pair = ide_get_pair_dev(drive);
 int clock, altclock, sel = 0;
 u8 unit = drive->dn & 1, v;

 if(itdev->want[0][0] > itdev->want[1][0]) {
  clock = itdev->want[0][1];
  altclock = itdev->want[1][1];
 } else {
  clock = itdev->want[1][1];
  altclock = itdev->want[0][1];
 }





 if (clock == ATA_ANY)
  clock = altclock;


 if(clock == ATA_ANY)
  return;

 if(clock == itdev->clock_mode)
  return;


 if(clock == ATA_66)
  itdev->clock_mode = ATA_66;
 else {
  itdev->clock_mode = ATA_50;
  sel = 1;
 }

 pci_read_config_byte(dev, 0x50, &v);
 v &= ~(1 << (1 + hwif->channel));
 v |= sel << (1 + hwif->channel);
 pci_write_config_byte(dev, 0x50, v);





 if(pair && itdev->udma[1-unit] != UDMA_OFF) {
  it821x_program_udma(pair, itdev->udma[1-unit]);
  it821x_program(pair, itdev->pio[1-unit]);
 }




 if(itdev->udma[unit] != UDMA_OFF) {
  it821x_program_udma(drive, itdev->udma[unit]);
  it821x_program(drive, itdev->pio[unit]);
 }
}
