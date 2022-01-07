
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {int channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int ATA_CBL_PATA40 ;
 int ATA_CBL_PATA40_SHORT ;
 int ATA_CBL_PATA80 ;
 scalar_t__ ali_cable_override (struct pci_dev*) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int m5229_revision ;
 int pci_read_config_byte (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static u8 ali_cable_detect(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long flags;
 u8 cbl = ATA_CBL_PATA40, tmpbyte;

 local_irq_save(flags);

 if (m5229_revision >= 0xC2) {
  if (ali_cable_override(dev))
   cbl = ATA_CBL_PATA40_SHORT;
  else {
   pci_read_config_byte(dev, 0x4a, &tmpbyte);
   if ((tmpbyte & (1 << hwif->channel)) == 0)
    cbl = ATA_CBL_PATA80;
  }
 }

 local_irq_restore(flags);

 return cbl;
}
