
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_5__ {int dn; TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_4__ {int dev; } ;


 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 sis_ata133_get_base(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u32 reg54 = 0;

 pci_read_config_dword(dev, 0x54, &reg54);

 return ((reg54 & 0x40000000) ? 0x70 : 0x40) + drive->dn * 4;
}
