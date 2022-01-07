
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;


 int pci_read_config_dword (struct pci_dev*,unsigned int,unsigned int*) ;
 int pci_write_config_dword (struct pci_dev*,unsigned int,int ) ;
 scalar_t__ sc1200_get_pci_clock () ;
 int ** sc1200_pio_timings ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static void sc1200_tunepio(ide_drive_t *drive, u8 pio)
{
 ide_hwif_t *hwif = drive->hwif;
 struct pci_dev *pdev = to_pci_dev(hwif->dev);
 unsigned int basereg = hwif->channel ? 0x50 : 0x40, format = 0;

 pci_read_config_dword(pdev, basereg + 4, &format);
 format = (format >> 31) & 1;
 if (format)
  format += sc1200_get_pci_clock();
 pci_write_config_dword(pdev, basereg + ((drive->dn & 1) << 3),
          sc1200_pio_timings[format][pio]);
}
