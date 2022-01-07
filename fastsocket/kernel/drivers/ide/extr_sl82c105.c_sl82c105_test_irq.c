
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct pci_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ channel; int dev; } ;
typedef TYPE_1__ ide_hwif_t ;


 int CTRL_IDE_IRQA ;
 int CTRL_IDE_IRQB ;
 int pci_read_config_dword (struct pci_dev*,int,int*) ;
 struct pci_dev* to_pci_dev (int ) ;

__attribute__((used)) static int sl82c105_test_irq(ide_hwif_t *hwif)
{
 struct pci_dev *dev = to_pci_dev(hwif->dev);
 u32 val, mask = hwif->channel ? CTRL_IDE_IRQB : CTRL_IDE_IRQA;

 pci_read_config_dword(dev, 0x40, &val);

 return (val & mask) ? 1 : 0;
}
