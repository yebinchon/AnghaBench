
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int) ;
 int NETIF_MSG_LINK ;
 scalar_t__ NIG_REG_LATCH_STATUS_0 ;
 scalar_t__ NIG_REG_STATUS_INTERRUPT_PORT0 ;
 int NIG_STATUS_EMAC0_MI_INT ;
 int REG_RD (struct bnx2x*,scalar_t__) ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 int bnx2x_bits_dis (struct bnx2x*,scalar_t__,int ) ;
 int bnx2x_bits_en (struct bnx2x*,scalar_t__,int ) ;

__attribute__((used)) static void bnx2x_rearm_latch_signal(struct bnx2x *bp, u8 port,
         u8 exp_mi_int)
{
 u32 latch_status = 0;






 latch_status = REG_RD(bp,
        NIG_REG_LATCH_STATUS_0 + port*8);
 DP(NETIF_MSG_LINK, "latch_status = 0x%x\n", latch_status);

 if (exp_mi_int)
  bnx2x_bits_en(bp,
         NIG_REG_STATUS_INTERRUPT_PORT0
         + port*4,
         NIG_STATUS_EMAC0_MI_INT);
 else
  bnx2x_bits_dis(bp,
          NIG_REG_STATUS_INTERRUPT_PORT0
          + port*4,
          NIG_STATUS_EMAC0_MI_INT);

 if (latch_status & 1) {


  REG_WR(bp, NIG_REG_LATCH_STATUS_0 + port*8,
         (latch_status & 0xfffe) | (latch_status & 1));
 }

}
