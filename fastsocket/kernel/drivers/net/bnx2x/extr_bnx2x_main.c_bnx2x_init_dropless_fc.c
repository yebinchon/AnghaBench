
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int flow_ctrl; scalar_t__ link_up; } ;
struct bnx2x {TYPE_1__ link_vars; scalar_t__ dropless_fc; } ;


 scalar_t__ BAR_USTRORM_INTMEM ;
 int BNX2X_FLOW_CTRL_TX ;
 int BP_PORT (struct bnx2x*) ;
 int CHIP_IS_E1 (struct bnx2x*) ;
 int DP (int,char*,char*) ;
 int NETIF_MSG_IFUP ;
 int NETIF_MSG_LINK ;
 int REG_WR (struct bnx2x*,scalar_t__,int) ;
 scalar_t__ USTORM_ETH_PAUSE_ENABLED_OFFSET (int ) ;

__attribute__((used)) static void bnx2x_init_dropless_fc(struct bnx2x *bp)
{
 u32 pause_enabled = 0;

 if (!CHIP_IS_E1(bp) && bp->dropless_fc && bp->link_vars.link_up) {
  if (bp->link_vars.flow_ctrl & BNX2X_FLOW_CTRL_TX)
   pause_enabled = 1;

  REG_WR(bp, BAR_USTRORM_INTMEM +
      USTORM_ETH_PAUSE_ENABLED_OFFSET(BP_PORT(bp)),
         pause_enabled);
 }

 DP(NETIF_MSG_IFUP | NETIF_MSG_LINK, "dropless_fc is %s\n",
    pause_enabled ? "enabled" : "disabled");
}
