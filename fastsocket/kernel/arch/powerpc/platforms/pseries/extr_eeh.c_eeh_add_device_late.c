
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {struct pci_dev* pcidev; } ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int WARN_ON (struct pci_dev*) ;
 int eeh_subsystem_enabled ;
 int eeh_sysfs_add_device (struct pci_dev*) ;
 int pci_addr_cache_insert_device (struct pci_dev*) ;
 int pci_dev_get (struct pci_dev*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;
 int pci_name (struct pci_dev*) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static void eeh_add_device_late(struct pci_dev *dev)
{
 struct device_node *dn;
 struct pci_dn *pdn;

 if (!dev || !eeh_subsystem_enabled)
  return;

 pr_debug("EEH: Adding device %s\n", pci_name(dev));

 dn = pci_device_to_OF_node(dev);
 pdn = PCI_DN(dn);
 if (pdn->pcidev == dev) {
  pr_debug("EEH: Already referenced !\n");
  return;
 }
 WARN_ON(pdn->pcidev);

 pci_dev_get (dev);
 pdn->pcidev = dev;

 pci_addr_cache_insert_device(dev);
 eeh_sysfs_add_device(dev);
}
