
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_6__ {int* arg; } ;
struct qlcnic_cmd_args {TYPE_3__ req; } ;
struct qlcnic_adapter {TYPE_1__* pdev; TYPE_2__* recv_ctx; } ;
struct TYPE_5__ {int context_id; } ;
struct TYPE_4__ {int dev; } ;


 int BIT_8 ;
 int QLCNIC_CMD_GET_LINK_EVENT ;
 int dev_info (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

int qlcnic_83xx_setup_link_event(struct qlcnic_adapter *adapter, int enable)
{
 int err;
 u32 temp;
 struct qlcnic_cmd_args cmd;

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_GET_LINK_EVENT);
 temp = adapter->recv_ctx->context_id << 16;
 cmd.req.arg[1] = (enable ? 1 : 0) | BIT_8 | temp;
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_info(&adapter->pdev->dev,
    "Setup linkevent mailbox failed\n");
 qlcnic_free_mbx_args(&cmd);
 return err;
}
