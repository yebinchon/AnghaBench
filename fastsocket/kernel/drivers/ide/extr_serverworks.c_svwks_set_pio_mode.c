
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {size_t dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;


 int pci_read_config_word (struct pci_dev*,int,int*) ;
 int pci_write_config_byte (struct pci_dev*,int const,int const) ;
 int pci_write_config_word (struct pci_dev*,int,int) ;
 scalar_t__ svwks_csb_check (struct pci_dev*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void svwks_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 static const u8 pio_modes[] = { 0x5d, 0x47, 0x34, 0x22, 0x20 };
 static const u8 drive_pci[] = { 0x41, 0x40, 0x43, 0x42 };

 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);

 pci_write_config_byte(dev, drive_pci[drive->dn], pio_modes[pio]);

 if (svwks_csb_check(dev)) {
  u16 csb_pio = 0;

  pci_read_config_word(dev, 0x4a, &csb_pio);

  csb_pio &= ~(0x0f << (4 * drive->dn));
  csb_pio |= (pio << (4 * drive->dn));

  pci_write_config_word(dev, 0x4a, csb_pio);
 }
}
