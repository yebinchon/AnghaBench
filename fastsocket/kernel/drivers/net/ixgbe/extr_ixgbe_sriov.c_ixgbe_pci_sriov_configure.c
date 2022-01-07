
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;


 int ixgbe_pci_sriov_disable (struct pci_dev*) ;
 int ixgbe_pci_sriov_enable (struct pci_dev*,int) ;

int ixgbe_pci_sriov_configure(struct pci_dev *dev, int num_vfs)
{
 if (num_vfs == 0)
  return ixgbe_pci_sriov_disable(dev);
 else
  return ixgbe_pci_sriov_enable(dev, num_vfs);
}
