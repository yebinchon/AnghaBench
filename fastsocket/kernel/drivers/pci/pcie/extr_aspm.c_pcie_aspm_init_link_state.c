
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcie_link_state {int dummy; } ;
struct pci_dev {TYPE_2__* subordinate; TYPE_1__* bus; scalar_t__ link_state; } ;
struct TYPE_4__ {int devices; } ;
struct TYPE_3__ {scalar_t__ self; } ;


 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 scalar_t__ POLICY_POWERSAVE ;
 struct pcie_link_state* alloc_pcie_link_state (struct pci_dev*) ;
 scalar_t__ aspm_clear_state ;
 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 scalar_t__ aspm_policy ;
 int aspm_support_enabled ;
 int down_read (int *) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pcie_aspm_cap_init (struct pcie_link_state*,int) ;
 int pcie_aspm_sanity_check (struct pci_dev*) ;
 int pcie_clkpm_cap_init (struct pcie_link_state*,int) ;
 int pcie_config_aspm_path (struct pcie_link_state*) ;
 int pcie_set_clkpm (struct pcie_link_state*,int ) ;
 int policy_to_clkpm_state (struct pcie_link_state*) ;
 int up_read (int *) ;

void pcie_aspm_init_link_state(struct pci_dev *pdev)
{
 struct pcie_link_state *link;
 int blacklist = !!pcie_aspm_sanity_check(pdev);

 if (!aspm_support_enabled)
  return;

 if (!pci_is_pcie(pdev) || pdev->link_state)
  return;
 if (pci_pcie_type(pdev) != PCI_EXP_TYPE_ROOT_PORT &&
     pci_pcie_type(pdev) != PCI_EXP_TYPE_DOWNSTREAM)
  return;

 if (aspm_disabled && !aspm_clear_state)
  return;


 if (pci_pcie_type(pdev) == PCI_EXP_TYPE_ROOT_PORT &&
     pdev->bus->self)
  return;

 down_read(&pci_bus_sem);
 if (list_empty(&pdev->subordinate->devices))
  goto out;

 mutex_lock(&aspm_lock);
 link = alloc_pcie_link_state(pdev);
 if (!link)
  goto unlock;





 pcie_aspm_cap_init(link, blacklist);


 pcie_clkpm_cap_init(link, blacklist);
 if (aspm_policy != POLICY_POWERSAVE || aspm_clear_state) {
  pcie_config_aspm_path(link);
  pcie_set_clkpm(link, policy_to_clkpm_state(link));
 }

unlock:
 mutex_unlock(&aspm_lock);
out:
 up_read(&pci_bus_sem);
}
