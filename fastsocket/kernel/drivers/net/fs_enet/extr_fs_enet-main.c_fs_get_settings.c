
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct fs_enet_private {int phydev; } ;
struct ethtool_cmd {int dummy; } ;


 int ENODEV ;
 struct fs_enet_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (int ,struct ethtool_cmd*) ;

__attribute__((used)) static int fs_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct fs_enet_private *fep = netdev_priv(dev);

 if (!fep->phydev)
  return -ENODEV;

 return phy_ethtool_gset(fep->phydev, cmd);
}
