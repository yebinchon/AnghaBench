
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
typedef enum pcie_reset_state { ____Placeholder_pcie_reset_state } pcie_reset_state ;


 int pcibios_set_pcie_reset_state (struct pci_dev*,int) ;

int pci_set_pcie_reset_state(struct pci_dev *dev, enum pcie_reset_state state)
{
 return pcibios_set_pcie_reset_state(dev, state);
}
