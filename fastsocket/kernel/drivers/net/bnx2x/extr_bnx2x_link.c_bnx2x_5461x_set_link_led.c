
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct link_params {struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dummy; } ;


 int DP (int ,char*,int) ;




 int MDIO_REG_GPHY_SHADOW ;
 int MDIO_REG_GPHY_SHADOW_LED_SEL1 ;
 int MDIO_REG_GPHY_SHADOW_WR_ENA ;
 int NETIF_MSG_LINK ;
 int bnx2x_cl22_read (struct bnx2x*,struct bnx2x_phy*,int ,int*) ;
 int bnx2x_cl22_write (struct bnx2x*,struct bnx2x_phy*,int ,int) ;

__attribute__((used)) static void bnx2x_5461x_set_link_led(struct bnx2x_phy *phy,
           struct link_params *params, u8 mode)
{
 struct bnx2x *bp = params->bp;
 u16 temp;

 bnx2x_cl22_write(bp, phy,
  MDIO_REG_GPHY_SHADOW,
  MDIO_REG_GPHY_SHADOW_LED_SEL1);
 bnx2x_cl22_read(bp, phy,
  MDIO_REG_GPHY_SHADOW,
  &temp);
 temp &= 0xff00;

 DP(NETIF_MSG_LINK, "54618x set link led (mode=%x)\n", mode);
 switch (mode) {
 case 131:
 case 130:
  temp |= 0x00ee;
  break;
 case 128:
  temp |= 0x0001;
  break;
 case 129:
  temp |= 0x00ff;
  break;
 default:
  break;
 }
 bnx2x_cl22_write(bp, phy,
  MDIO_REG_GPHY_SHADOW,
  MDIO_REG_GPHY_SHADOW_WR_ENA | temp);
 return;
}
