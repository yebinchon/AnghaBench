
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {int error_state; } ;
struct device_node {struct device_node* parent; } ;
struct TYPE_2__ {int eeh_mode; struct pci_dev* pcidev; } ;


 TYPE_1__* PCI_DN (struct device_node*) ;
 int __eeh_mark_slot (struct device_node*,int) ;
 struct device_node* find_device_pe (struct device_node*) ;
 int pci_channel_io_frozen ;
 int pcibios_find_pci_bus (struct device_node*) ;

void eeh_mark_slot (struct device_node *dn, int mode_flag)
{
 struct pci_dev *dev;
 dn = find_device_pe (dn);


 if (!pcibios_find_pci_bus(dn) && PCI_DN(dn->parent))
  dn = dn->parent;

 PCI_DN(dn)->eeh_mode |= mode_flag;


 dev = PCI_DN(dn)->pcidev;
 if (dev)
  dev->error_state = pci_channel_io_frozen;

 __eeh_mark_slot(dn, mode_flag);
}
