
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct qlcnic_sriov {int vlan; int bc; } ;
struct TYPE_5__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {int netdev; TYPE_3__* pdev; TYPE_1__* ahw; } ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {struct qlcnic_sriov* sriov; } ;


 int QLCNIC_BC_CMD_CFG_GUEST_VLAN ;
 int dev_err (int *,char*,int) ;
 int qlcnic_free_mac_list (struct qlcnic_adapter*) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_alloc_bc_mbx_args (struct qlcnic_cmd_args*,int ) ;
 int qlcnic_sriov_cleanup_async_list (int *) ;
 int qlcnic_sriov_validate_vlan_cfg (struct qlcnic_sriov*,int,int) ;
 int qlcnic_sriov_vf_set_multi (int ) ;

int qlcnic_sriov_cfg_vf_guest_vlan(struct qlcnic_adapter *adapter,
       u16 vid, u8 enable)
{
 struct qlcnic_sriov *sriov = adapter->ahw->sriov;
 struct qlcnic_cmd_args cmd;
 int ret;

 if (vid == 0)
  return 0;

 ret = qlcnic_sriov_validate_vlan_cfg(sriov, vid, enable);
 if (ret)
  return ret;

 ret = qlcnic_sriov_alloc_bc_mbx_args(&cmd,
          QLCNIC_BC_CMD_CFG_GUEST_VLAN);
 if (ret)
  return ret;

 cmd.req.arg[1] = (enable & 1) | vid << 16;

 qlcnic_sriov_cleanup_async_list(&sriov->bc);
 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret) {
  dev_err(&adapter->pdev->dev,
   "Failed to configure guest VLAN, err=%d\n", ret);
 } else {
  qlcnic_free_mac_list(adapter);

  if (enable)
   sriov->vlan = vid;
  else
   sriov->vlan = 0;

  qlcnic_sriov_vf_set_multi(adapter->netdev);
 }

 qlcnic_free_mbx_args(&cmd);
 return ret;
}
