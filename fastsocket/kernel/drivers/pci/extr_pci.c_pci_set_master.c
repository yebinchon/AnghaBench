
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int __pci_set_master (struct pci_dev*,int) ;
 int pcibios_set_master (struct pci_dev*) ;

void pci_set_master(struct pci_dev *dev)
{
 __pci_set_master(dev, 1);
 pcibios_set_master(dev);
}
