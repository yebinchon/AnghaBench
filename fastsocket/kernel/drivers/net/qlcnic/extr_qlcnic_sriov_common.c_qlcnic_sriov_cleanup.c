
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qlcnic_adapter {int dummy; } ;


 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_cleanup (struct qlcnic_adapter*) ;
 scalar_t__ qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_cleanup (struct qlcnic_adapter*) ;

void qlcnic_sriov_cleanup(struct qlcnic_adapter *adapter)
{
 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_sriov_pf_cleanup(adapter);

 if (qlcnic_sriov_vf_check(adapter))
  qlcnic_sriov_vf_cleanup(adapter);
}
