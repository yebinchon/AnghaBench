
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int PCI_NUM_RESOURCES ;
 int do_pci_enable_device (struct pci_dev*,int) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;

int pci_reenable_device(struct pci_dev *dev)
{
 if (pci_is_enabled(dev))
  return do_pci_enable_device(dev, (1 << PCI_NUM_RESOURCES) - 1);
 return 0;
}
