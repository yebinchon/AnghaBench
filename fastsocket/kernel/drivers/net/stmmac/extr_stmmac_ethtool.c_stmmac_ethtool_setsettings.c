
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int lock; struct phy_device* phydev; } ;
struct phy_device {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_sset (struct phy_device*,struct ethtool_cmd*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int stmmac_ethtool_setsettings(struct net_device *dev, struct ethtool_cmd *cmd)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 struct phy_device *phy = priv->phydev;
 int rc;

 spin_lock(&priv->lock);
 rc = phy_ethtool_sset(phy, cmd);
 spin_unlock(&priv->lock);

 return rc;
}
