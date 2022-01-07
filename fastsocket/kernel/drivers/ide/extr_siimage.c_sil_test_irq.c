
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct pci_dev {int dummy; } ;
struct TYPE_4__ {int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 unsigned long siimage_selreg (TYPE_1__*,int) ;
 int sil_ioread8 (struct pci_dev*,unsigned long) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sil_test_irq(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 unsigned long addr = siimage_selreg(hwif, 1);
 u8 val = sil_ioread8(dev, addr);


 return (val & 8) ? 1 : 0;
}
