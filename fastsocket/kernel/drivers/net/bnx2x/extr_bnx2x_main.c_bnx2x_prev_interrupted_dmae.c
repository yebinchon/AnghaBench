
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2x {int dummy; } ;


 int BNX2X_MSG_SP ;
 int BP_FUNC (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*) ;
 int PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN ;
 int PGLUE_B_REG_PGLUE_B_INT_STS ;
 int PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR ;
 int REG_RD (struct bnx2x*,int ) ;
 int REG_WR (struct bnx2x*,int ,int) ;

__attribute__((used)) static void bnx2x_prev_interrupted_dmae(struct bnx2x *bp)
{
 if (!CHIP_IS_E1x(bp)) {
  u32 val = REG_RD(bp, PGLUE_B_REG_PGLUE_B_INT_STS);
  if (val & PGLUE_B_PGLUE_B_INT_STS_REG_WAS_ERROR_ATTN) {
   DP(BNX2X_MSG_SP,
      "'was error' bit was found to be set in pglueb upon startup. Clearing\n");
   REG_WR(bp, PGLUE_B_REG_WAS_ERROR_PF_7_0_CLR,
          1 << BP_FUNC(bp));
  }
 }
}
