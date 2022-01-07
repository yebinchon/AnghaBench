
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mv643xx_eth_private {int * phy; } ;
struct ethtool_cmd {int dummy; } ;


 int mv643xx_eth_get_settings_phy (struct mv643xx_eth_private*,struct ethtool_cmd*) ;
 int mv643xx_eth_get_settings_phyless (struct mv643xx_eth_private*,struct ethtool_cmd*) ;
 struct mv643xx_eth_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int
mv643xx_eth_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct mv643xx_eth_private *mp = netdev_priv(dev);

 if (mp->phy != ((void*)0))
  return mv643xx_eth_get_settings_phy(mp, cmd);
 else
  return mv643xx_eth_get_settings_phyless(mp, cmd);
}
