
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct link_params {struct bnx2x* bp; scalar_t__ port; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,scalar_t__) ;
 int GRCBASE_XMAC0 ;
 int GRCBASE_XMAC1 ;
 int MISC_REGISTERS_RESET_REG_2_XMAC ;
 int MISC_REG_RESET_REG_2 ;
 int NETIF_MSG_LINK ;
 int REG_RD (struct bnx2x*,int) ;
 int REG_WR (struct bnx2x*,int,int) ;
 int XMAC_CTRL_REG_RX_EN ;
 int XMAC_CTRL_REG_TX_EN ;
 int XMAC_REG_CTRL ;
 int XMAC_REG_PFC_CTRL_HI ;

__attribute__((used)) static void bnx2x_set_xmac_rxtx(struct link_params *params, u8 en)
{
 u8 port = params->port;
 struct bnx2x *bp = params->bp;
 u32 pfc_ctrl, xmac_base = (port) ? GRCBASE_XMAC1 : GRCBASE_XMAC0;
 u32 val;

 if (REG_RD(bp, MISC_REG_RESET_REG_2) &
     MISC_REGISTERS_RESET_REG_2_XMAC) {




  pfc_ctrl = REG_RD(bp, xmac_base + XMAC_REG_PFC_CTRL_HI);
  REG_WR(bp, xmac_base + XMAC_REG_PFC_CTRL_HI,
         (pfc_ctrl & ~(1<<1)));
  REG_WR(bp, xmac_base + XMAC_REG_PFC_CTRL_HI,
         (pfc_ctrl | (1<<1)));
  DP(NETIF_MSG_LINK, "Disable XMAC on port %x\n", port);
  val = REG_RD(bp, xmac_base + XMAC_REG_CTRL);
  if (en)
   val |= (XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
  else
   val &= ~(XMAC_CTRL_REG_TX_EN | XMAC_CTRL_REG_RX_EN);
  REG_WR(bp, xmac_base + XMAC_REG_CTRL, val);
 }
}
