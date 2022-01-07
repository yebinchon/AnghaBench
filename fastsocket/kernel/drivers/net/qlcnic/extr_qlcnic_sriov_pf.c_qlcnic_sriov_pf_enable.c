
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int pdev; } ;


 int pci_enable_sriov (int ,int) ;
 int qlcnic_sriov_enable_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_cleanup (struct qlcnic_adapter*) ;

__attribute__((used)) static int qlcnic_sriov_pf_enable(struct qlcnic_adapter *adapter, int num_vfs)
{
 int err;

 if (!qlcnic_sriov_enable_check(adapter))
  return 0;

 err = pci_enable_sriov(adapter->pdev, num_vfs);
 if (err)
  qlcnic_sriov_pf_cleanup(adapter);

 return err;
}
