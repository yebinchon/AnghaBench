
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_6__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_7__ {int recovery; int assert; } ;


 TYPE_4__* cs5520_pio_clocks ;
 int pci_write_config_byte (struct pci_dev*,int,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void cs5520_set_pio_mode(ide_drive_t *drive, const u8 pio)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 int controller = drive->dn > 1 ? 1 : 0;


 pci_write_config_byte(pdev, 0x62 + controller,
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));





 pci_write_config_byte(pdev, 0x64 + 4*controller + (drive->dn&1),
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));

 pci_write_config_byte(pdev, 0x66 + 4*controller + (drive->dn&1),
  (cs5520_pio_clocks[pio].recovery << 4) |
  (cs5520_pio_clocks[pio].assert));
}
