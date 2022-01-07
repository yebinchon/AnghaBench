
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_eth_private {int phydev; } ;
struct net_device {int dummy; } ;


 int BMCR_RESET ;
 int MII_BMCR ;
 struct sh_eth_private* netdev_priv (struct net_device*) ;
 int phy_start (int ) ;
 int phy_write (int ,int ,int ) ;
 int sh_eth_phy_init (struct net_device*) ;

__attribute__((used)) static int sh_eth_phy_start(struct net_device *ndev)
{
 struct sh_eth_private *mdp = netdev_priv(ndev);
 int ret;

 ret = sh_eth_phy_init(ndev);
 if (ret)
  return ret;


 phy_write(mdp->phydev, MII_BMCR, BMCR_RESET);
 phy_start(mdp->phydev);

 return 0;
}
