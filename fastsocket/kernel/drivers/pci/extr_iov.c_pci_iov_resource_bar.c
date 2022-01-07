
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pci_dev {TYPE_1__* sriov; int is_physfn; } ;
typedef enum pci_bar_type { ____Placeholder_pci_bar_type } pci_bar_type ;
struct TYPE_2__ {int pos; } ;


 int BUG_ON (int) ;
 int PCI_IOV_RESOURCES ;
 int PCI_IOV_RESOURCE_END ;
 int PCI_SRIOV_BAR ;
 int pci_bar_unknown ;

int pci_iov_resource_bar(struct pci_dev *dev, int resno,
    enum pci_bar_type *type)
{
 if (resno < PCI_IOV_RESOURCES || resno > PCI_IOV_RESOURCE_END)
  return 0;

 BUG_ON(!dev->is_physfn);

 *type = pci_bar_unknown;

 return dev->sriov->pos + PCI_SRIOV_BAR +
  4 * (resno - PCI_IOV_RESOURCES);
}
