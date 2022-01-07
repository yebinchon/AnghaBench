
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_D3cold ;
 int PCI_D3hot ;
 int pci_enable_wake (struct pci_dev*,int ,int) ;
 scalar_t__ pci_pme_capable (struct pci_dev*,int ) ;

int pci_wake_from_d3(struct pci_dev *dev, bool enable)
{
 return pci_pme_capable(dev, PCI_D3cold) ?
   pci_enable_wake(dev, PCI_D3cold, enable) :
   pci_enable_wake(dev, PCI_D3hot, enable);
}
