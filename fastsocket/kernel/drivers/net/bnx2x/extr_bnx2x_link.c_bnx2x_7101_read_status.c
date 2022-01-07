
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_vars {int link_status; int duplex; int line_speed; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int,int) ;
 int DUPLEX_FULL ;
 int LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE ;
 int MDIO_AN_DEVAD ;
 int MDIO_AN_REG_MASTER_STATUS ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_LASI_STAT ;
 int MDIO_PMA_REG_STATUS ;
 int NETIF_MSG_LINK ;
 int SPEED_10000 ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int bnx2x_ext_phy_10G_an_resolve (struct bnx2x*,struct bnx2x_phy*,struct link_vars*) ;
 int bnx2x_ext_phy_resolve_fc (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;

__attribute__((used)) static u8 bnx2x_7101_read_status(struct bnx2x_phy *phy,
     struct link_params *params,
     struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u8 link_up;
 u16 val1, val2;
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_LASI_STAT, &val1);
 DP(NETIF_MSG_LINK, "10G-base-T LASI status 0x%x->0x%x\n",
     val2, val1);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val2);
 bnx2x_cl45_read(bp, phy,
   MDIO_PMA_DEVAD, MDIO_PMA_REG_STATUS, &val1);
 DP(NETIF_MSG_LINK, "10G-base-T PMA status 0x%x->0x%x\n",
     val2, val1);
 link_up = ((val1 & 4) == 4);

 if (link_up) {
  bnx2x_cl45_read(bp, phy,
    MDIO_AN_DEVAD, MDIO_AN_REG_MASTER_STATUS,
    &val2);
  vars->line_speed = SPEED_10000;
  vars->duplex = DUPLEX_FULL;
  DP(NETIF_MSG_LINK, "SFX7101 AN status 0x%x->Master=%x\n",
      val2, (val2 & (1<<14)));
  bnx2x_ext_phy_10G_an_resolve(bp, phy, vars);
  bnx2x_ext_phy_resolve_fc(phy, params, vars);


  if (val2 & (1<<11))
   vars->link_status |=
    LINK_STATUS_LINK_PARTNER_10GXFD_CAPABLE;
 }
 return link_up;
}
