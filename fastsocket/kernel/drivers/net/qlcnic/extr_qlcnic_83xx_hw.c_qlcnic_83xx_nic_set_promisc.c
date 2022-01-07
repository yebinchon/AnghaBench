
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_1__ req; } ;
struct qlcnic_adapter {TYPE_2__* pdev; TYPE_3__* recv_ctx; } ;
struct TYPE_6__ {scalar_t__ state; } ;
struct TYPE_5__ {int dev; } ;


 int EIO ;
 int QLCNIC_CMD_CONFIGURE_MAC_RX_MODE ;
 scalar_t__ QLCNIC_HOST_CTX_STATE_FREED ;
 int dev_info (int *,char*) ;
 int qlcnic_83xx_set_interface_id_promisc (struct qlcnic_adapter*,int*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_83xx_nic_set_promisc(struct qlcnic_adapter *adapter, u32 mode)
{
 int err;
 u32 temp = 0;
 struct qlcnic_cmd_args cmd;

 if (adapter->recv_ctx->state == QLCNIC_HOST_CTX_STATE_FREED)
  return -EIO;

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_CONFIGURE_MAC_RX_MODE);
 qlcnic_83xx_set_interface_id_promisc(adapter, &temp);
 cmd.req.arg[1] = (mode ? 1 : 0) | temp;
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_info(&adapter->pdev->dev,
    "Promiscous mode config failed\n");

 qlcnic_free_mbx_args(&cmd);
 return err;
}
