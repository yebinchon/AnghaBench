
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {int * pcidev; } ;


 TYPE_1__* PCI_DN (struct device_node*) ;
 int eeh_subsystem_enabled ;
 int eeh_sysfs_remove_device (struct pci_dev*) ;
 int pci_addr_cache_remove_device (struct pci_dev*) ;
 int pci_dev_put (struct pci_dev*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void eeh_remove_device(struct pci_dev *dev)
{
 struct device_node *dn;
 if (!dev || !eeh_subsystem_enabled)
  return;


 pr_debug("EEH: Removing device %s\n", pci_name(dev));

 dn = pci_device_to_OF_node(dev);
 if (PCI_DN(dn)->pcidev == ((void*)0)) {
  pr_debug("EEH: Not referenced !\n");
  return;
 }
 PCI_DN(dn)->pcidev = ((void*)0);
 pci_dev_put (dev);

 pci_addr_cache_remove_device(dev);
 eeh_sysfs_remove_device(dev);
}
