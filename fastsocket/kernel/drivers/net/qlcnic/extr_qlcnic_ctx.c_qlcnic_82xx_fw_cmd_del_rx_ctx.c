
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_recv_context {int state; int context_id; } ;
struct TYPE_4__ {int * arg; } ;
struct qlcnic_cmd_args {TYPE_2__ req; } ;
struct qlcnic_adapter {TYPE_1__* pdev; struct qlcnic_recv_context* recv_ctx; } ;
struct TYPE_3__ {int dev; } ;


 int QLCNIC_CMD_DESTROY_RX_CTX ;
 int QLCNIC_HOST_CTX_STATE_FREED ;
 int dev_err (int *,char*) ;
 int qlcnic_alloc_mbx_args (struct qlcnic_cmd_args*,struct qlcnic_adapter*,int ) ;
 int qlcnic_free_mbx_args (struct qlcnic_cmd_args*) ;
 int qlcnic_issue_cmd (struct qlcnic_adapter*,struct qlcnic_cmd_args*) ;

void qlcnic_82xx_fw_cmd_del_rx_ctx(struct qlcnic_adapter *adapter)
{
 int err;
 struct qlcnic_cmd_args cmd;
 struct qlcnic_recv_context *recv_ctx = adapter->recv_ctx;

 qlcnic_alloc_mbx_args(&cmd, adapter, QLCNIC_CMD_DESTROY_RX_CTX);
 cmd.req.arg[1] = recv_ctx->context_id;
 err = qlcnic_issue_cmd(adapter, &cmd);
 if (err)
  dev_err(&adapter->pdev->dev,
   "Failed to destroy rx ctx in firmware\n");

 recv_ctx->state = QLCNIC_HOST_CTX_STATE_FREED;
 qlcnic_free_mbx_args(&cmd);
}
