
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct link_vars {scalar_t__ line_speed; } ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_PHY_IDENTIFIER ;
 int NETIF_MSG_LINK ;
 scalar_t__ bnx2x_8706_8726_read_status (struct bnx2x_phy*,struct link_params*,struct link_vars*) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;

__attribute__((used)) static u8 bnx2x_8726_read_status(struct bnx2x_phy *phy,
     struct link_params *params,
     struct link_vars *vars)
{
 struct bnx2x *bp = params->bp;
 u16 val1;
 u8 link_up = bnx2x_8706_8726_read_status(phy, params, vars);
 if (link_up) {
  bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD, MDIO_PMA_REG_PHY_IDENTIFIER,
    &val1);
  if (val1 & (1<<15)) {
   DP(NETIF_MSG_LINK, "Tx is disabled\n");
   link_up = 0;
   vars->line_speed = 0;
  }
 }
 return link_up;
}
