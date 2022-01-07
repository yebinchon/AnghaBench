
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pcie_link_state {int link; int sibling; struct pcie_link_state* parent; struct pcie_link_state* root; } ;
struct pci_dev {struct pcie_link_state* link_state; TYPE_2__* subordinate; int bus_list; TYPE_1__* bus; } ;
struct TYPE_4__ {int devices; } ;
struct TYPE_3__ {struct pci_dev* self; } ;


 scalar_t__ PCI_EXP_TYPE_DOWNSTREAM ;
 scalar_t__ PCI_EXP_TYPE_ROOT_PORT ;
 int aspm_clear_state ;
 scalar_t__ aspm_disabled ;
 int aspm_lock ;
 int down_read (int *) ;
 int free_link_state (struct pcie_link_state*) ;
 int list_del (int *) ;
 int list_is_last (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_bus_sem ;
 int pci_is_pcie (struct pci_dev*) ;
 scalar_t__ pci_pcie_type (struct pci_dev*) ;
 int pcie_config_aspm_link (struct pcie_link_state*,int ) ;
 int pcie_config_aspm_path (struct pcie_link_state*) ;
 int pcie_update_aspm_capable (struct pcie_link_state*) ;
 int up_read (int *) ;

void pcie_aspm_exit_link_state(struct pci_dev *pdev)
{
 struct pci_dev *parent = pdev->bus->self;
 struct pcie_link_state *link, *root, *parent_link;

 if ((aspm_disabled && !aspm_clear_state) || !pci_is_pcie(pdev) ||
     !parent || !parent->link_state)
  return;
 if ((pci_pcie_type(parent) != PCI_EXP_TYPE_ROOT_PORT) &&
     (pci_pcie_type(parent) != PCI_EXP_TYPE_DOWNSTREAM))
  return;

 down_read(&pci_bus_sem);
 mutex_lock(&aspm_lock);




 if (!list_is_last(&pdev->bus_list, &parent->subordinate->devices))
  goto out;

 link = parent->link_state;
 root = link->root;
 parent_link = link->parent;


 pcie_config_aspm_link(link, 0);
 list_del(&link->sibling);
 list_del(&link->link);

 free_link_state(link);


 if (parent_link) {
  pcie_update_aspm_capable(root);
  pcie_config_aspm_path(parent_link);
 }
out:
 mutex_unlock(&aspm_lock);
 up_read(&pci_bus_sem);
}
