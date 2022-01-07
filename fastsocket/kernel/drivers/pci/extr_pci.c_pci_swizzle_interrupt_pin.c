
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int devfn; int bus; } ;


 int PCI_SLOT (int ) ;
 scalar_t__ pci_ari_enabled (int ) ;

u8 pci_swizzle_interrupt_pin(struct pci_dev *dev, u8 pin)
{
 int slot;

 if (pci_ari_enabled(dev->bus))
  slot = 0;
 else
  slot = PCI_SLOT(dev->devfn);

 return (((pin - 1) + slot) % 4) + 1;
}
