
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef scalar_t__ u16 ;
struct link_params {int port; struct bnx2x* bp; } ;
struct bnx2x_phy {int dummy; } ;
struct bnx2x {int dev; } ;


 int CL22_RD_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,scalar_t__*) ;
 int CL22_WR_OVER_CL45 (struct bnx2x*,struct bnx2x_phy*,int ,int ,scalar_t__) ;
 int DP (int ,char*) ;
 int EINVAL ;
 scalar_t__ MDIO_ACCESS_TIMEOUT ;
 int MDIO_COMBO_IEEE0_MII_CONTROL ;
 scalar_t__ MDIO_COMBO_IEEO_MII_CONTROL_RESET ;
 int MDIO_REG_BANK_COMBO_IEEE0 ;
 int NETIF_MSG_LINK ;
 int bnx2x_set_serdes_access (struct bnx2x*,int ) ;
 int netdev_err (int ,char*,int ) ;
 int udelay (int) ;

__attribute__((used)) static int bnx2x_reset_unicore(struct link_params *params,
          struct bnx2x_phy *phy,
          u8 set_serdes)
{
 struct bnx2x *bp = params->bp;
 u16 mii_control;
 u16 i;
 CL22_RD_OVER_CL45(bp, phy,
     MDIO_REG_BANK_COMBO_IEEE0,
     MDIO_COMBO_IEEE0_MII_CONTROL, &mii_control);


 CL22_WR_OVER_CL45(bp, phy,
     MDIO_REG_BANK_COMBO_IEEE0,
     MDIO_COMBO_IEEE0_MII_CONTROL,
     (mii_control |
      MDIO_COMBO_IEEO_MII_CONTROL_RESET));
 if (set_serdes)
  bnx2x_set_serdes_access(bp, params->port);


 for (i = 0; i < MDIO_ACCESS_TIMEOUT; i++) {
  udelay(5);


  CL22_RD_OVER_CL45(bp, phy,
      MDIO_REG_BANK_COMBO_IEEE0,
      MDIO_COMBO_IEEE0_MII_CONTROL,
      &mii_control);

  if (!(mii_control & MDIO_COMBO_IEEO_MII_CONTROL_RESET)) {
   udelay(5);
   return 0;
  }
 }

 netdev_err(bp->dev, "Warning: PHY was not initialized,"
         " Port %d\n",
    params->port);
 DP(NETIF_MSG_LINK, "BUG! XGXS is still in reset!\n");
 return -EINVAL;

}
