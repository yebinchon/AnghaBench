
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int rom_base_reg; int dev; } ;
typedef enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;


 int PCI_BASE_ADDRESS_0 ;
 int PCI_BRIDGE_RESOURCES ;
 int PCI_ROM_RESOURCE ;
 int dev_err (int *,char*,int) ;
 int pci_bar_mem32 ;
 int pci_bar_unknown ;
 int pci_iov_resource_bar (struct pci_dev*,int,int*) ;

int pci_resource_bar(struct pci_dev *dev, int resno, enum pci_bar_type *type)
{
 int reg;

 if (resno < PCI_ROM_RESOURCE) {
  *type = pci_bar_unknown;
  return PCI_BASE_ADDRESS_0 + 4 * resno;
 } else if (resno == PCI_ROM_RESOURCE) {
  *type = pci_bar_mem32;
  return dev->rom_base_reg;
 } else if (resno < PCI_BRIDGE_RESOURCES) {

  reg = pci_iov_resource_bar(dev, resno, type);
  if (reg)
   return reg;
 }

 dev_err(&dev->dev, "BAR %d: invalid resource\n", resno);
 return 0;
}
