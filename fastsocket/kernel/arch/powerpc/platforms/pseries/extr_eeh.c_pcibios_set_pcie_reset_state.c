
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int dummy; } ;
struct pci_dev {int dummy; } ;
struct device_node {int dummy; } ;
typedef enum pcie_reset_state { ____Placeholder_pcie_reset_state } pcie_reset_state ;


 int EINVAL ;
 struct pci_dn* PCI_DN (struct device_node*) ;
 struct device_node* pci_device_to_OF_node (struct pci_dev*) ;



 int rtas_pci_slot_reset (struct pci_dn*,int) ;

int pcibios_set_pcie_reset_state(struct pci_dev *dev, enum pcie_reset_state state)
{
 struct device_node *dn = pci_device_to_OF_node(dev);
 struct pci_dn *pdn = PCI_DN(dn);

 switch (state) {
 case 130:
  rtas_pci_slot_reset(pdn, 0);
  break;
 case 129:
  rtas_pci_slot_reset(pdn, 1);
  break;
 case 128:
  rtas_pci_slot_reset(pdn, 3);
  break;
 default:
  return -EINVAL;
 };

 return 0;
}
