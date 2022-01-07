
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct net_device {int dummy; } ;
struct bnx2x {int link_params; } ;


 int DEFAULT_PHY_DEV_ADDR ;
 int DP (int ,char*,int,int,int ,int ) ;
 int MDIO_DEVAD_NONE ;
 int NETIF_MSG_LINK ;
 int bnx2x_acquire_phy_lock (struct bnx2x*) ;
 int bnx2x_phy_write (int *,int,int,int ,int ) ;
 int bnx2x_release_phy_lock (struct bnx2x*) ;
 struct bnx2x* netdev_priv (struct net_device*) ;

__attribute__((used)) static int bnx2x_mdio_write(struct net_device *netdev, int prtad, int devad,
       u16 addr, u16 value)
{
 struct bnx2x *bp = netdev_priv(netdev);
 int rc;

 DP(NETIF_MSG_LINK,
    "mdio_write: prtad 0x%x, devad 0x%x, addr 0x%x, value 0x%x\n",
    prtad, devad, addr, value);


 devad = (devad == MDIO_DEVAD_NONE) ? DEFAULT_PHY_DEV_ADDR : devad;

 bnx2x_acquire_phy_lock(bp);
 rc = bnx2x_phy_write(&bp->link_params, prtad, devad, addr, value);
 bnx2x_release_phy_lock(bp);
 return rc;
}
