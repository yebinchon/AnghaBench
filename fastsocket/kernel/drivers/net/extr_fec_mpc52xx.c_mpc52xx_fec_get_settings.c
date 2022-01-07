
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mpc52xx_fec_priv {int phydev; } ;
struct ethtool_cmd {int dummy; } ;


 int ENODEV ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (int ,struct ethtool_cmd*) ;

__attribute__((used)) static int mpc52xx_fec_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);

 if (!priv->phydev)
  return -ENODEV;

 return phy_ethtool_gset(priv->phydev, cmd);
}
