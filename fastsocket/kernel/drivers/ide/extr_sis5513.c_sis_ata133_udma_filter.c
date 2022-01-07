
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_6__ {TYPE_1__* hwif; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_5__ {int dev; } ;


 int ATA_UDMA5 ;
 int ATA_UDMA6 ;
 int pci_read_config_dword (struct pci_dev*,int ,int*) ;
 int sis_ata133_get_base (TYPE_2__*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 sis_ata133_udma_filter(ide_drive_t *drive)
{
 struct pci_dev *dev = to_pci_dev(drive->hwif->dev);
 u32 regdw = 0;
 u8 drive_pci = sis_ata133_get_base(drive);

 pci_read_config_dword(dev, drive_pci, &regdw);


 return (regdw & 0x08) ? ATA_UDMA6 : ATA_UDMA5;
}
