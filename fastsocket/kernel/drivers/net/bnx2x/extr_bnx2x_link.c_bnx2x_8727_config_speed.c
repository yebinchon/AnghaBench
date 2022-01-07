
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {scalar_t__ req_line_speed; scalar_t__ media_type; int speed_cap_mask; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,...) ;
 scalar_t__ DUAL_MEDIA (struct link_params*) ;
 scalar_t__ ETH_PHY_SFP_1G_FIBER ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_8727_MISC_CTRL ;
 int MDIO_AN_REG_CL37_AN ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_10G_CTRL2 ;
 int MDIO_PMA_REG_8727_PCS_GP ;
 int MDIO_PMA_REG_CTRL ;
 int NETIF_MSG_LINK ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_10G ;
 int PORT_HW_CFG_SPEED_CAPABILITY_D0_1G ;
 scalar_t__ SPEED_1000 ;
 scalar_t__ SPEED_AUTO_NEG ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_cl45_write (struct bnx2x*,struct bnx2x_phy*,int ,int ,int) ;

__attribute__((used)) static void bnx2x_8727_config_speed(struct bnx2x_phy *phy,
        struct link_params *params)
{
 struct bnx2x *bp = params->bp;
 u16 tmp1, val;

 if ((phy->req_line_speed == SPEED_1000) ||
     (phy->media_type == ETH_PHY_SFP_1G_FIBER)) {
  DP(NETIF_MSG_LINK, "Setting 1G force\n");
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x40);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, 0xD);
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2, &tmp1);
  DP(NETIF_MSG_LINK, "1.7 = 0x%x\n", tmp1);



  if (DUAL_MEDIA(params)) {
   bnx2x_cl45_read(bp, phy,
     MDIO_PMA_DEVAD,
     MDIO_PMA_REG_8727_PCS_GP, &val);
   val |= (3<<10);
   bnx2x_cl45_write(bp, phy,
      MDIO_PMA_DEVAD,
      MDIO_PMA_REG_8727_PCS_GP, val);
  }
 } else if ((phy->req_line_speed == SPEED_AUTO_NEG) &&
     ((phy->speed_cap_mask &
       PORT_HW_CFG_SPEED_CAPABILITY_D0_1G)) &&
     ((phy->speed_cap_mask &
        PORT_HW_CFG_SPEED_CAPABILITY_D0_10G) !=
     PORT_HW_CFG_SPEED_CAPABILITY_D0_10G)) {

  DP(NETIF_MSG_LINK, "Setting 1G clause37\n");
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL, 0);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x1300);
 } else {



  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_8727_MISC_CTRL,
     0x0020);
  bnx2x_cl45_write(bp, phy,
     MDIO_AN_DEVAD, MDIO_AN_REG_CL37_AN, 0x0100);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_CTRL, 0x2040);
  bnx2x_cl45_write(bp, phy,
     MDIO_PMA_DEVAD, MDIO_PMA_REG_10G_CTRL2,
     0x0008);
 }
}
