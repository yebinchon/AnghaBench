
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {scalar_t__ line_speed; int fault_detected; int duplex; } ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int flags; scalar_t__ req_line_speed; } ;
struct bnx2x {int dev; } ;


 int BP_PATH (struct bnx2x*) ;
 int CHIP_IS_E1x (struct bnx2x*) ;
 int DP (int ,char*,...) ;
 scalar_t__ DUAL_MEDIA (struct link_params*) ;
 int DUPLEX_FULL ;
 int FLAGS_NOC ;
 int FLAGS_SFP_NOT_APPROVED ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_CTRL ;
 int MDIO_PMA_LASI_RXCTRL ;
 int MDIO_PMA_LASI_RXSTAT ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_LASI_TXCTRL ;
 int MDIO_PMA_LASI_TXSTAT ;
 int MDIO_PMA_REG_8073_SPEED_LINK_STATUS ;
 int MDIO_PMA_REG_8727_GPIO_CTRL ;
 int MDIO_PMA_REG_8727_PCS_GP ;
 int MDIO_PMA_REG_M8051_MSGOUT_REG ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int NETIF_MSG_LINK ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_10000 ;
 int bnx2x_8727_handle_mod_abs (struct bnx2x_phy*,struct link_params*) ;
 int bnx2x_8727_power_module (struct bnx2x*,struct bnx2x_phy*,int ) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;
 int bnx2x_ext_phy_resolve_fc (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_sfp_mask_fault (struct bnx2x*,struct bnx2x_phy*,int ,int ) ;
 int bnx2x_sfp_set_transmitter (struct link_params*,struct bnx2x_phy*,int) ;
 int netdev_err (int ,char*,int) ;

__attribute__((used)) static u8 bnx2x_8727_read_status(struct bnx2x_phy *phy,
     struct link_params *params,
     struct link_vars *vars)

{
 struct bnx2x *bp = params->bp;
 u8 link_up = 0, oc_port = params->port;
 u16 link_status = 0;
 u16 rx_alarm_status, lasi_ctrl, val1;


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_CTRL,
   &lasi_ctrl);
 if (!lasi_ctrl)
  return 0;


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXSTAT,
   &rx_alarm_status);
 vars->line_speed = 0;
 DP(NETIF_MSG_LINK, "8727 RX_ALARM_STATUS  0x%x\n", rx_alarm_status);

 bnx2x_sfp_mask_fault(bp, phy, MDIO_PMA_LASI_TXSTAT,
        MDIO_PMA_LASI_TXCTRL);

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);

 DP(NETIF_MSG_LINK, "8727 LASI status 0x%x\n", val1);


 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_M8051_MSGOUT_REG, &val1);




 if (!(phy->flags & FLAGS_NOC) && !(rx_alarm_status & (1<<5))) {

  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_8727_GPIO_CTRL,
    &val1);

  if ((val1 & (1<<8)) == 0) {
   if (!CHIP_IS_E1x(bp))
    oc_port = BP_PATH(bp) + (params->port << 1);
   DP(NETIF_MSG_LINK,
      "8727 Power fault has been detected on port %d\n",
      oc_port);
   netdev_err(bp->dev, "Error: Power fault on Port %d has "
         "been detected and the power to "
         "that SFP+ module has been removed "
         "to prevent failure of the card. "
         "Please remove the SFP+ module and "
         "restart the system to clear this "
         "error.\n",
    oc_port);

   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_LASI_RXCTRL, (1<<5));

   bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_PHY_IDENTIFIER, &val1);

   val1 |= (1<<8);
   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_PHY_IDENTIFIER, val1);

   bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_LASI_RXSTAT, &rx_alarm_status);
   bnx2x_8727_power_module(params->bp, phy, 0);
   return 0;
  }
 }


 if (rx_alarm_status & (1<<5)) {
  bnx2x_8727_handle_mod_abs(phy, params);

  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_LASI_RXCTRL,
     ((1<<5) | (1<<2)));
 }

 if (!(phy->flags & FLAGS_SFP_NOT_APPROVED)) {
  DP(NETIF_MSG_LINK, "Enabling 8727 TX laser\n");
  bnx2x_sfp_set_transmitter(params, phy, 1);
 } else {
  DP(NETIF_MSG_LINK, "Tx is disabled\n");
  return 0;
 }

 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD,
   MDIO_PMA_REG_8073_SPEED_LINK_STATUS, &link_status);




 if ((link_status & (1<<2)) && (!(link_status & (1<<15)))) {
  link_up = 1;
  vars->line_speed = SPEED_10000;
  DP(NETIF_MSG_LINK, "port %x: External link up in 10G\n",
      params->port);
 } else if ((link_status & (1<<0)) && (!(link_status & (1<<13)))) {
  link_up = 1;
  vars->line_speed = SPEED_1000;
  DP(NETIF_MSG_LINK, "port %x: External link up in 1G\n",
      params->port);
 } else {
  link_up = 0;
  DP(NETIF_MSG_LINK, "port %x: External link is down\n",
      params->port);
 }


 if (vars->line_speed == SPEED_10000) {
  bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);

  bnx2x_cl45_read(bp, phy, MDIO_PMA_DEVAD,
       MDIO_PMA_LASI_TXSTAT, &val1);

  if (val1 & (1<<0)) {
   vars->fault_detected = 1;
  }
 }

 if (link_up) {
  bnx2x_ext_phy_resolve_fc(phy, params, vars);
  vars->duplex = DUPLEX_FULL;
  DP(NETIF_MSG_LINK, "duplex = 0x%x\n", vars->duplex);
 }

 if ((DUAL_MEDIA(params)) &&
     (phy->req_line_speed == SPEED_1000)) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_8727_PCS_GP, &val1);



  if (link_up)
   val1 &= ~(3<<10);
  else
   val1 |= (3<<10);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8727_PCS_GP, val1);
 }
 return link_up;
}
