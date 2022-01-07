
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct qlcnic_sriov {int vlan_mode; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ rsp; } ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_3__* ahw; } ;
struct TYPE_6__ {struct qlcnic_sriov* sriov; } ;
struct TYPE_4__ {int dev; } ;


 int QLCNIC_BC_CMD_GET_ACL ;


 int dev_err (int *,char*,int) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_alloc_bc_mbx_args (struct qlcnic_cmd_args*,int ) ;
 int qlcnic_sriov_set_guest_vlan_mode (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_set_pvid_mode (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_get_vf_acl(struct qlcnic_adapter *adapter)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_cmd_args cmd;
 int ret;

 ret = qlcnic_sriov_alloc_bc_mbx_args(&cmd, QLCNIC_BC_CMD_GET_ACL);
 if (ret)
  return ret;

 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret) {
  dev_err(&adapter->pdev->dev, "Failed to get ACL, err=%d\n",
   ret);
 } else {
  sriov->vlan_mode = cmd.rsp.arg[1] & 0x3;
  switch (sriov->vlan_mode) {
  case 129:
   ret = qlcnic_sriov_set_guest_vlan_mode(adapter, &cmd);
   break;
  case 128:
   ret = qlcnic_sriov_set_pvid_mode(adapter, &cmd);
   break;
  }
 }

 qlcnic_free_mbx_args(&cmd);
 return ret;
}
