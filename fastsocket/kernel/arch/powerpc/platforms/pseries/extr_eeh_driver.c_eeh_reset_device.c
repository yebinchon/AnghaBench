
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dn {int eeh_freeze_count; scalar_t__ eeh_pe_config_addr; struct device_node* node; } ;
struct pci_bus {int dummy; } ;
struct device_node {struct device_node* sibling; struct device_node* child; struct device_node* parent; } ;


 struct pci_dn* PCI_DN (struct device_node*) ;
 int eeh_restore_bars (struct pci_dn*) ;
 int pcibios_add_pci_devices (struct pci_bus*) ;
 int pcibios_find_pci_bus (struct device_node*) ;
 int pcibios_remove_pci_devices (struct pci_bus*) ;
 int rtas_configure_bridge (struct pci_dn*) ;
 int rtas_set_slot_reset (struct pci_dn*) ;
 int ssleep (int) ;

__attribute__((used)) static int eeh_reset_device (struct pci_dn *pe_dn, struct pci_bus *bus)
{
 struct device_node *dn;
 int cnt, rc;


 cnt = pe_dn->eeh_freeze_count;

 if (bus)
  pcibios_remove_pci_devices(bus);




 rc = rtas_set_slot_reset(pe_dn);
 if (rc)
  return rc;


 dn = pe_dn->node;
 if (!pcibios_find_pci_bus(dn) && PCI_DN(dn->parent))
  dn = dn->parent->child;

 while (dn) {
  struct pci_dn *ppe = PCI_DN(dn);

  if (pe_dn->eeh_pe_config_addr == ppe->eeh_pe_config_addr) {
   rtas_configure_bridge(ppe);
   eeh_restore_bars(ppe);
   }
  dn = dn->sibling;
 }







 if (bus) {
  ssleep (5);
  pcibios_add_pci_devices(bus);
 }
 pe_dn->eeh_freeze_count = cnt;

 return 0;
}
