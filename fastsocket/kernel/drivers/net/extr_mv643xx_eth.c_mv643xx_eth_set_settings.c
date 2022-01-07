
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int * phy; } ;
struct ethtool_cmd {int advertising; } ;


 int ADVERTISED_1000baseT_Half ;
 int EINVAL ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (int *,struct ethtool_cmd*) ;

__attribute__((used)) static int
mv643xx_eth_set_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (mp->phy == ((void*)0))
  return -EINVAL;




 cmd->advertising &= ~ADVERTISED_1000baseT_Half;

 return phy_ethtool_sset(mp->phy, cmd);
}
