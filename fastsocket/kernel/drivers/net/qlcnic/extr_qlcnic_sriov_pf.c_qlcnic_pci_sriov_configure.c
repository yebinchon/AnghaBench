
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int state; } ;
struct pci_dev {int dummy; } ;


 int EBUSY ;
 int __QLCNIC_RESETTING ;
 int clear_bit (int ,int *) ;
 struct qlcnic_adapter* pci_get_drvdata (struct pci_dev*) ;
 int qlcnic_pci_sriov_disable (struct qlcnic_adapter*) ;
 int qlcnic_pci_sriov_enable (struct qlcnic_adapter*,int) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int qlcnic_pci_sriov_configure(struct pci_dev *dev, int num_vfs)
{
 struct qlcnic_adapter *adapter = pci_get_drvdata(dev);
 int err;

 if (test_and_set_bit(__QLCNIC_RESETTING, &adapter->state))
  return -EBUSY;

 if (num_vfs == 0)
  err = qlcnic_pci_sriov_disable(adapter);
 else
  err = qlcnic_pci_sriov_enable(adapter, num_vfs);

 clear_bit(__QLCNIC_RESETTING, &adapter->state);
 return err;
}
