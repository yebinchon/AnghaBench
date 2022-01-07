
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int do_pci_disable_device (struct pci_dev*) ;
 scalar_t__ pci_is_enabled (struct pci_dev*) ;

void pci_disable_enabled_device(struct pci_dev *dev)
{
 if (pci_is_enabled(dev))
  do_pci_disable_device(dev);
}
