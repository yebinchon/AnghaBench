
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {unsigned int needs_freset; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {struct pci_dev* pcidev; } ;


 TYPE_1__* PCI_DN (struct device_node*) ;
 int __eeh_set_pe_freset (struct device_node*,unsigned int*) ;
 struct device_node* find_device_pe (struct device_node*) ;
 int pcibios_find_pci_bus (struct device_node*) ;

void eeh_set_pe_freset(struct device_node *dn, unsigned int *freset)
{
 struct pci_dev *dev;
 dn = find_device_pe(dn);


 if (!pcibios_find_pci_bus(dn) && PCI_DN(dn->parent))
  dn = dn->parent;

 dev = PCI_DN(dn)->pcidev;
 if (dev)
  *freset |= dev->needs_freset;

 __eeh_set_pe_freset(dn, freset);
}
