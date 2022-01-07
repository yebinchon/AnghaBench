
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ixgbe_adapter {int num_vfs; } ;


 int EPERM ;
 int __ixgbe_enable_sriov (struct ixgbe_adapter*) ;
 int e_dev_warn (char*,int) ;
 int ixgbe_disable_sriov (struct ixgbe_adapter*) ;
 int ixgbe_sriov_reinit (struct ixgbe_adapter*) ;
 int ixgbe_vf_configuration (struct pci_dev*,int) ;
 int pci_enable_sriov (struct pci_dev*,int) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;
 int pci_num_vf (struct pci_dev*) ;

__attribute__((used)) static int ixgbe_pci_sriov_enable(struct pci_dev *dev, int num_vfs)
{
 return 0;
}
