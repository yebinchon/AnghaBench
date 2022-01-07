
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dn {unsigned int devfn; } ;
struct pci_bus {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; } ;


 int PCIBIOS_DEVICE_NOT_FOUND ;
 struct pci_dn* PCI_DN (struct device_node*) ;
 scalar_t__ of_device_is_available (struct device_node*) ;
 struct device_node* pci_bus_to_OF_node (struct pci_bus*) ;
 int rtas_read_config (struct pci_dn*,int,int,int *) ;

__attribute__((used)) static int rtas_pci_read_config(struct pci_bus *bus,
    unsigned int devfn,
    int where, int size, u32 *val)
{
 struct device_node *busdn, *dn;

 busdn = pci_bus_to_OF_node(bus);


 for (dn = busdn->child; dn; dn = dn->sibling) {
  struct pci_dn *pdn = PCI_DN(dn);
  if (pdn && pdn->devfn == devfn
      && of_device_is_available(dn))
   return rtas_read_config(pdn, where, size, val);
 }

 return PCIBIOS_DEVICE_NOT_FOUND;
}
