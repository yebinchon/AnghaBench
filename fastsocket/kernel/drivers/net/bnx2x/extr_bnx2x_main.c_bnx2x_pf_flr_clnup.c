
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int pdev; } ;


 int BNX2X_ERR (char*) ;
 int BNX2X_MSG_SP ;
 int BP_ABS_FUNC (struct bnx2x*) ;
 scalar_t__ BP_FUNC (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 int EBUSY ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER ;
 int PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ ;
 int REG_WR (struct bnx2x*,int ,int) ;
 int bnx2x_flr_clnup_poll_count (struct bnx2x*) ;
 int bnx2x_hw_enable_status (struct bnx2x*) ;
 scalar_t__ bnx2x_is_pcie_pending (int ) ;
 scalar_t__ bnx2x_poll_hw_usage_counters (struct bnx2x*,int ) ;
 scalar_t__ bnx2x_send_final_clnup (struct bnx2x*,int ,int ) ;
 int bnx2x_tx_hw_flushed (struct bnx2x*,int ) ;
 int msleep (int) ;

__attribute__((used)) static int bnx2x_pf_flr_clnup(struct bnx2x *bp)
{
 u32 poll_cnt = bnx2x_flr_clnup_poll_count(bp);

 DP(BNX2X_MSG_SP, "Cleanup after FLR PF[%d]\n", BP_ABS_FUNC(bp));


 REG_WR(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_TARGET_READ, 1);


 DP(BNX2X_MSG_SP, "Polling usage counters\n");
 if (bnx2x_poll_hw_usage_counters(bp, poll_cnt))
  return -EBUSY;




 if (bnx2x_send_final_clnup(bp, (u8)BP_FUNC(bp), poll_cnt))
  return -EBUSY;




 bnx2x_tx_hw_flushed(bp, poll_cnt);


 msleep(100);


 if (bnx2x_is_pcie_pending(bp->pdev))
  BNX2X_ERR("PCIE Transactions still pending\n");


 bnx2x_hw_enable_status(bp);





 REG_WR(bp, PGLUE_B_REG_INTERNAL_PFID_ENABLE_MASTER, 1);

 return 0;
}
