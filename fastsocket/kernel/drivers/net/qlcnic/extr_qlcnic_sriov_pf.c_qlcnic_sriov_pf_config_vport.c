
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_6__ {int* arg; } ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ rsp; TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_5__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int QLCNIC_CMD_CONFIG_VPORT ;
 int dev_err (int *,char*,char*,int,int) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;
 int qlcnic_sriov_pf_get_vport_handle (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_pf_reset_vport_handle (struct qlcnic_adapter*,int) ;
 int qlcnic_sriov_pf_set_vport_handle (struct qlcnic_adapter*,int,int) ;

__attribute__((used)) static int qlcnic_sriov_pf_config_vport(struct qlcnic_adapter *adapter,
     u8 flag, u16 func)
{
 struct qlcnic_cmd_args cmd;
 int ret;
 int vpid;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CONFIG_VPORT))
  return -ENOMEM;

 if (flag) {
  cmd.req.arg[3] = func << 8;
 } else {
  vpid = qlcnic_sriov_pf_get_vport_handle(adapter, func);
  if (vpid < 0) {
   ret = -EINVAL;
   goto out;
  }
  cmd.req.arg[3] = ((vpid & 0xffff) << 8) | 1;
 }

 ret = qlcnic_issue_cmd(adapter, &cmd);
 if (ret) {
  dev_err(&adapter->pdev->dev,
   "Failed %s vport, err %d for func 0x%x\n",
   (flag ? "enable" : "disable"), ret, func);
  goto out;
 }

 if (flag) {
  vpid = cmd.rsp.arg[2] & 0xffff;
  qlcnic_sriov_pf_set_vport_handle(adapter, vpid, func);
 } else {
  qlcnic_sriov_pf_reset_vport_handle(adapter, func);
 }

out:
 qlcnic_free_mbx_args(&cmd);
 return ret;
}
