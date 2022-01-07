
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct stmmac_priv {int rx_csum; } ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;

u32 stmmac_ethtool_get_rx_csum(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);

 return priv->rx_csum;
}
