
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int* mf_config; int flags; } ;


 int BNX2X_MSG_MCP ;
 size_t BP_VN (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int DRV_MSG_CODE_DCC_FAILURE ;
 int DRV_MSG_CODE_DCC_OK ;
 int DRV_STATUS_DCC_BANDWIDTH_ALLOCATION ;
 int DRV_STATUS_DCC_DISABLE_ENABLE_PF ;
 int FUNC_MF_CFG_FUNC_DISABLED ;
 int MF_FUNC_DIS ;
 int bnx2x_config_mf_bw (struct bnx2x*) ;
 int bnx2x_e1h_disable (struct bnx2x*) ;
 int bnx2x_e1h_enable (struct bnx2x*) ;
 int bnx2x_fw_command (struct bnx2x*,int ,int ) ;

__attribute__((used)) static void bnx2x_dcc_event(struct bnx2x *bp, u32 dcc_event)
{
 DP(BNX2X_MSG_MCP, "dcc_event 0x%x\n", dcc_event);

 if (dcc_event & DRV_STATUS_DCC_DISABLE_ENABLE_PF) {






  if (bp->mf_config[BP_VN(bp)] & FUNC_MF_CFG_FUNC_DISABLED) {
   DP(BNX2X_MSG_MCP, "mf_cfg function disabled\n");
   bp->flags |= MF_FUNC_DIS;

   bnx2x_e1h_disable(bp);
  } else {
   DP(BNX2X_MSG_MCP, "mf_cfg function enabled\n");
   bp->flags &= ~MF_FUNC_DIS;

   bnx2x_e1h_enable(bp);
  }
  dcc_event &= ~DRV_STATUS_DCC_DISABLE_ENABLE_PF;
 }
 if (dcc_event & DRV_STATUS_DCC_BANDWIDTH_ALLOCATION) {
  bnx2x_config_mf_bw(bp);
  dcc_event &= ~DRV_STATUS_DCC_BANDWIDTH_ALLOCATION;
 }


 if (dcc_event)
  bnx2x_fw_command(bp, DRV_MSG_CODE_DCC_FAILURE, 0);
 else
  bnx2x_fw_command(bp, DRV_MSG_CODE_DCC_OK, 0);
}
