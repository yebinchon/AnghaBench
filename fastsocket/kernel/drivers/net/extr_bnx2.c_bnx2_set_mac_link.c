
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct bnx2 {int line_speed; scalar_t__ duplex; int rx_mode; int flow_ctrl; scalar_t__ link_up; } ;


 int BNX2_CHIP (struct bnx2*) ;
 int BNX2_CHIP_5706 ;
 int BNX2_EMAC_MODE ;
 int BNX2_EMAC_MODE_25G_MODE ;
 int BNX2_EMAC_MODE_FORCE_LINK ;
 int BNX2_EMAC_MODE_HALF_DUPLEX ;
 int BNX2_EMAC_MODE_MAC_LOOP ;
 int BNX2_EMAC_MODE_PORT ;
 int BNX2_EMAC_MODE_PORT_GMII ;
 int BNX2_EMAC_MODE_PORT_MII ;
 int BNX2_EMAC_MODE_PORT_MII_10M ;
 int BNX2_EMAC_RX_MODE ;
 int BNX2_EMAC_RX_MODE_FLOW_EN ;
 int BNX2_EMAC_STATUS ;
 int BNX2_EMAC_STATUS_LINK_CHANGE ;
 int BNX2_EMAC_TX_LENGTHS ;
 int BNX2_EMAC_TX_MODE ;
 int BNX2_EMAC_TX_MODE_FLOW_EN ;
 int BNX2_RD (struct bnx2*,int ) ;
 int BNX2_WR (struct bnx2*,int ,int) ;
 scalar_t__ DUPLEX_HALF ;
 int FLOW_CTRL_RX ;
 int FLOW_CTRL_TX ;




 int bnx2_init_all_rx_contexts (struct bnx2*) ;

__attribute__((used)) static void
bnx2_set_mac_link(struct bnx2 *bp)
{
 u32 val;

 BNX2_WR(bp, BNX2_EMAC_TX_LENGTHS, 0x2620);
 if (bp->link_up && (bp->line_speed == 129) &&
  (bp->duplex == DUPLEX_HALF)) {
  BNX2_WR(bp, BNX2_EMAC_TX_LENGTHS, 0x26ff);
 }


 val = BNX2_RD(bp, BNX2_EMAC_MODE);

 val &= ~(BNX2_EMAC_MODE_PORT | BNX2_EMAC_MODE_HALF_DUPLEX |
  BNX2_EMAC_MODE_MAC_LOOP | BNX2_EMAC_MODE_FORCE_LINK |
  BNX2_EMAC_MODE_25G_MODE);

 if (bp->link_up) {
  switch (bp->line_speed) {
   case 131:
    if (BNX2_CHIP(bp) != BNX2_CHIP_5706) {
     val |= BNX2_EMAC_MODE_PORT_MII_10M;
     break;
    }

   case 130:
    val |= BNX2_EMAC_MODE_PORT_MII;
    break;
   case 128:
    val |= BNX2_EMAC_MODE_25G_MODE;

   case 129:
    val |= BNX2_EMAC_MODE_PORT_GMII;
    break;
  }
 }
 else {
  val |= BNX2_EMAC_MODE_PORT_GMII;
 }


 if (bp->duplex == DUPLEX_HALF)
  val |= BNX2_EMAC_MODE_HALF_DUPLEX;
 BNX2_WR(bp, BNX2_EMAC_MODE, val);


 bp->rx_mode &= ~BNX2_EMAC_RX_MODE_FLOW_EN;

 if (bp->flow_ctrl & FLOW_CTRL_RX)
  bp->rx_mode |= BNX2_EMAC_RX_MODE_FLOW_EN;
 BNX2_WR(bp, BNX2_EMAC_RX_MODE, bp->rx_mode);


 val = BNX2_RD(bp, BNX2_EMAC_TX_MODE);
 val &= ~BNX2_EMAC_TX_MODE_FLOW_EN;

 if (bp->flow_ctrl & FLOW_CTRL_TX)
  val |= BNX2_EMAC_TX_MODE_FLOW_EN;
 BNX2_WR(bp, BNX2_EMAC_TX_MODE, val);


 BNX2_WR(bp, BNX2_EMAC_STATUS, BNX2_EMAC_STATUS_LINK_CHANGE);

 bnx2_init_all_rx_contexts(bp);
}
