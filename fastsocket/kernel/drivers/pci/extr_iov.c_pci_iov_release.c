
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {scalar_t__ is_physfn; } ;


 int sriov_release (struct pci_dev*) ;

void pci_iov_release(struct pci_dev *dev)
{
 if (dev->is_physfn)
  sriov_release(dev);
}
