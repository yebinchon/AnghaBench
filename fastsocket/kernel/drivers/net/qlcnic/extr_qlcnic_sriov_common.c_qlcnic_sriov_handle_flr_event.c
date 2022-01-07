
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_vf_info {struct qlcnic_adapter* adapter; } ;
struct qlcnic_sriov {int dummy; } ;
struct qlcnic_adapter {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int *,char*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_pf_handle_flr (struct qlcnic_sriov*,struct qlcnic_vf_info*) ;

__attribute__((used)) static void qlcnic_sriov_handle_flr_event(struct qlcnic_sriov *sriov,
       struct qlcnic_vf_info *vf)
{
 struct qlcnic_adapter *adapter = vf->adapter;

 if (qlcnic_sriov_pf_check(adapter))
  qlcnic_sriov_pf_handle_flr(sriov, vf);
 else
  dev_err(&adapter->pdev->dev,
   "Invalid event to VF. VF should not get FLR event\n");
}
