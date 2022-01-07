
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_3__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_0 ;
 int BIT_1 ;
 int BIT_6 ;
 int EIO ;
 int ENOMEM ;
 int QLCNIC_CMD_TOGGLE_ESWITCH ;
 int QLCNIC_RCODE_SUCCESS ;
 int dev_err (int *,char*,int) ;
 scalar_t__ qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

__attribute__((used)) static int qlcnic_sriov_pf_cfg_eswitch(struct qlcnic_adapter *adapter,
           u8 func, u8 enable)
{
 struct qlcnic_cmd_args cmd;
 int err = -EIO;

 if (qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_TOGGLE_ESWITCH))
  return -ENOMEM;

 cmd.req.arg[0] |= (3 << 29);
 cmd.req.arg[1] = ((func & 0xf) << 2) | BIT_6 | BIT_1;
 if (enable)
  cmd.req.arg[1] |= BIT_0;

 err = qlcnic_issue_cmd(adapter, &cmd);

 if (err != QLCNIC_RCODE_SUCCESS) {
  dev_err(&adapter->pdev->dev,
   "Failed to enable sriov eswitch%d\n", err);
  err = -EIO;
 }

 qlcnic_free_mbx_args(&cmd);
 return err;
}
