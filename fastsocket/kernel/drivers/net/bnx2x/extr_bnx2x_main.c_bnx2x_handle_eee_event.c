
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2x {int dummy; } ;


 int BNX2X_MSG_MCP ;
 int DP (int ,char*) ;
 int DRV_MSG_CODE_EEE_RESULTS_ACK ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_handle_eee_event(struct bnx2x *bp)
{
 DP(BNX2X_MSG_MCP, "EEE - LLDP event\n");
 bnx2x_fw_command(bp, DRV_MSG_CODE_EEE_RESULTS_ACK, 0);
}
