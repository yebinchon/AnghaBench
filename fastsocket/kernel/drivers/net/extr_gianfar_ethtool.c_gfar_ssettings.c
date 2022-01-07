
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct gfar_private {struct phy_device* phydev; } ;
struct ethtool_cmd {int dummy; } ;


 int ENODEV ;
 struct gfar_private* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (struct phy_device*,struct ethtool_cmd*) ;

__attribute__((used)) static int gfar_ssettings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct gfar_private *priv = netdev_priv(dev);
 struct phy_device *phydev = priv->phydev;

 if (((void*)0) == phydev)
  return -ENODEV;

 return phy_ethtool_sset(phydev, cmd);
}
