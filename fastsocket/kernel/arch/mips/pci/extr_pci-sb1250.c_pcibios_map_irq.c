
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int irq; } ;



int pcibios_map_irq(const struct pci_dev *dev, u8 slot, u8 pin)
{
 return dev->irq;
}
