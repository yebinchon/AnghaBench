
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct netxen_recv_context {scalar_t__ state; int context_id; } ;
struct TYPE_2__ {int arg2; scalar_t__ arg3; int arg1; int cmd; } ;
struct netxen_cmd_args {TYPE_1__ req; } ;
struct netxen_adapter {struct netxen_recv_context recv_ctx; } ;
typedef int cmd ;


 int EIO ;
 int NX_CDRP_CMD_SET_MTU ;
 scalar_t__ NX_HOST_CTX_STATE_ACTIVE ;
 scalar_t__ NX_RCODE_SUCCESS ;
 int memset (struct netxen_cmd_args*,int ,int) ;
 int netxen_issue_cmd (struct netxen_adapter*,struct netxen_cmd_args*) ;

int
nx_fw_cmd_set_mtu(struct netxen_adapter *adapter, int mtu)
{
 u32 rcode = NX_RCODE_SUCCESS;
 struct netxen_recv_context *recv_ctx = &adapter->recv_ctx;
 struct netxen_cmd_args cmd;

 memset(&cmd, 0, sizeof(cmd));
 cmd.req.cmd = NX_CDRP_CMD_SET_MTU;
 cmd.req.arg1 = recv_ctx->context_id;
 cmd.req.arg2 = mtu;
 cmd.req.arg3 = 0;

 if (recv_ctx->state == NX_HOST_CTX_STATE_ACTIVE)
  netxen_issue_cmd(adapter, &cmd);

 if (rcode != NX_RCODE_SUCCESS)
  return -EIO;

 return 0;
}
