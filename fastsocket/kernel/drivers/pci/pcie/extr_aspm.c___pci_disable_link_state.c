
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcie_link_state {scalar_t__ clkpm_capable; int aspm_disable; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_1__* bus; } ;
struct TYPE_2__ {struct pci_dev* self; } ;


 int ASPM_STATE_L0S ;
 int ASPM_STATE_L1 ;
 int PCIE_LINK_STATE_CLKPM ;
 int PCIE_LINK_STATE_L0S ;
 int PCIE_LINK_STATE_L1 ;
 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 int down_read (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pcie_config_aspm_link (struct pcie_link_state*,int ) ;
 int pcie_set_clkpm (struct pcie_link_state*,int ) ;
 int policy_to_aspm_state (struct pcie_link_state*) ;
 int up_read (int *) ;

__attribute__((used)) static void __pci_disable_link_state(struct pci_dev *pdev, int state, bool sem)
{
 struct pci_dev *parent = pdev->bus->self;
 struct pcie_link_state *link;

 if (aspm_disabled || !pci_is_pcie(pdev))
  return;
 if (pci_pcie_type(pdev) == PCI_EXP_TYPE_ROOT_PORT ||
     pci_pcie_type(pdev) == PCI_EXP_TYPE_DOWNSTREAM)
  parent = pdev;
 if (!parent || !parent->link_state)
  return;

 if (sem)
  down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);
 link = parent->link_state;
 if (state & PCIE_LINK_STATE_L0S)
  link->aspm_disable |= ASPM_STATE_L0S;
 if (state & PCIE_LINK_STATE_L1)
  link->aspm_disable |= ASPM_STATE_L1;
 pcie_config_aspm_link(link, policy_to_aspm_state(link));

 if (state & PCIE_LINK_STATE_CLKPM) {
  link->clkpm_capable = 0;
  pcie_set_clkpm(link, 0);
 }
 mutex_unlock(&aspm_lock);
 if (sem)
  up_read(&pci_bus_sem);
}
