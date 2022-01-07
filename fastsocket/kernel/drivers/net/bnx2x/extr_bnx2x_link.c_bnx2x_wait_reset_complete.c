
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct link_params {int port; } ;
struct bnx2x_phy {scalar_t__ type; } ;
struct bnx2x {int dev; } ;


 int DP (int ,char*,int,int) ;
 int MDIO_PMA_DEVAD ;
 int MDIO_PMA_REG_CTRL ;
 int NETIF_MSG_LINK ;
 scalar_t__ PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE ;
 int bnx2x_cl22_read (struct bnx2x*,struct bnx2x_phy*,int ,int*) ;
 int bnx2x_cl45_read (struct bnx2x*,struct bnx2x_phy*,int ,int ,int*) ;
 int netdev_err (int ,char*,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static u16 bnx2x_wait_reset_complete(struct bnx2x *bp,
         struct bnx2x_phy *phy,
         struct link_params *params)
{
 u16 cnt, ctrl;

 for (cnt = 0; cnt < 1000; cnt++) {
  if (phy->type == PORT_HW_CFG_XGXS_EXT_PHY_TYPE_BCM54618SE)
   bnx2x_cl22_read(bp, phy,
    MDIO_PMA_REG_CTRL, &ctrl);
  else
   bnx2x_cl45_read(bp, phy,
    MDIO_PMA_DEVAD,
    MDIO_PMA_REG_CTRL, &ctrl);
  if (!(ctrl & (1<<15)))
   break;
  usleep_range(1000, 2000);
 }

 if (cnt == 1000)
  netdev_err(bp->dev, "Warning: PHY was not initialized,"
          " Port %d\n",
    params->port);
 DP(NETIF_MSG_LINK, "control reg 0x%x (after %d ms)\n", ctrl, cnt);
 return cnt;
}
