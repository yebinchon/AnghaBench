
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ is_physfn; } ;


 int sriov_restore_state (struct pci_dev*) ;

void pci_restore_iov_state(struct pci_dev *dev)
{
 if (dev->is_physfn)
  sriov_restore_state(dev);
}
