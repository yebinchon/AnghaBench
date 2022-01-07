
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct cpmac_priv {scalar_t__ phy; } ;


 int EINVAL ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (scalar_t__,struct ethtool_cmd*) ;

__attribute__((used)) static int cpmac_get_settings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct cpmac_priv *priv = netdev_priv(dev);

 if (priv->phy)
  return phy_ethtool_gset(priv->phy, cmd);

 return -EINVAL;
}
