
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_cmd {int dummy; } ;
struct emac_priv {int phydev; scalar_t__ phy_mask; } ;


 int EOPNOTSUPP ;
 struct emac_priv* netdev_priv (struct net_device*) ;
 int phy_ethtool_gset (int ,struct ethtool_cmd*) ;

__attribute__((used)) static int emac_get_settings(struct net_device *ndev,
        struct ethtool_cmd *ecmd)
{
 struct emac_priv *priv = netdev_priv(ndev);
 if (priv->phy_mask)
  return phy_ethtool_gset(priv->phydev, ecmd);
 else
  return -EOPNOTSUPP;

}
