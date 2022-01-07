
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pci_dev {int dummy; } ;
struct ixgbe_adapter {scalar_t__ flags; } ;


 scalar_t__ IXGBE_FLAG_VMDQ_ENABLED ;
 int ixgbe_disable_sriov (struct ixgbe_adapter*) ;
 int ixgbe_sriov_reinit (struct ixgbe_adapter*) ;
 struct ixgbe_adapter* pci_get_drvdata (struct pci_dev*) ;

__attribute__((used)) static int ixgbe_pci_sriov_disable(struct pci_dev *dev)
{
 struct ixgbe_adapter *adapter = pci_get_drvdata(dev);
 int err;
 u32 current_flags = adapter->flags;

 err = ixgbe_disable_sriov(adapter);


 if (!err && current_flags != adapter->flags) {

  adapter->flags &= ~IXGBE_FLAG_VMDQ_ENABLED;



 }

 return err;
}
