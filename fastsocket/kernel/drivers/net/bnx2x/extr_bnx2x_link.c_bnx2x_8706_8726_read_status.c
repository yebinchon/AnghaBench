
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {scalar_t__ line_speed; int fault_detected; int duplex; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 int DUPLEX_FULL ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_LINK_STATUS ;
 int MDIO_PCS_DEVAD ;
 int MDIO_PCS_REG_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_LASI_TXSTAT ;
 int MDIO_PMA_REG_RX_SD ;
 int NETIF_MSG_LINK ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_ext_phy_resolve_fc (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_sfp_mask_fault (struct bnx2x*,struct bnx2x_phy*,int ,int ) ;

__attribute__((used)) static u8 bnx2x_8706_8726_read_status(struct bnx2x_phy *phy,
          struct link_params *params,
          struct link_vars *vars)
{
 u8 link_up = 0;
 u16 val1, val2, rx_sd, pcs_status;
 struct bnx2x *bp = params->bp;
 DP(NETIF_MSG_LINK, "XGXS 8706/8726\n");

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT, &val2);

 bnx2x_sfp_mask_fault(bp, phy, MDIO_PMA_LASI_TXSTAT,
        MDIO_PMA_LASI_TXCTRL);


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
 DP(NETIF_MSG_LINK, "8706/8726 LASI status 0x%x--> 0x%x\n", val1, val2);

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_RX_SD, &rx_sd);
 bnx2x_cl45_read(bp, phy,
   MDIO_PCS_DEVAD, MDIO_PCS_REG_STATUS, &pcs_status);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_AN_DEVAD, MDIO_AN_REG_LINK_STATUS, &val2);

 DP(NETIF_MSG_LINK, "8706/8726 rx_sd 0x%x pcs_status 0x%x 1Gbps"
   " link_status 0x%x\n", rx_sd, pcs_status, val2);



 link_up = ((rx_sd & pcs_status & 0x1) || (val2 & (1<<1)));
 if (link_up) {
  if (val2 & (1<<1))
   vars->line_speed = SPEED_1000;
  else
   vars->line_speed = SPEED_10000;
  bnx2x_ext_phy_resolve_fc(phy, params, vars);
  vars->duplex = DUPLEX_FULL;
 }


 if (vars->line_speed == SPEED_10000) {
  bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);
  bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);
  if (val1 & (1<<0))
   vars->fault_detected = 1;
 }

 return link_up;
}
