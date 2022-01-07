
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int inb (unsigned long) ;
 unsigned long pci_resource_start (struct pci_dev*,int) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int pdc202xx_test_irq(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long high_16 = pci_resource_start(dev, 4);
 u8 sc1d = inb(high_16 + 0x1d);

 if (hwif->channel) {




  return ((sc1d & 0x50) == 0x40) ? 1 : 0;
 } else {




  return ((sc1d & 0x05) == 0x04) ? 1 : 0;
 }
}
