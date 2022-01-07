
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int dummy; } ;
struct net_device {int dummy; } ;


 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int stmmac_tx_err (struct stmmac_priv*) ;

__attribute__((used)) static void stmmac_tx_timeout(struct net_device *dev)
{
 struct stmmac_priv *priv = netdev_priv(dev);


 stmmac_tx_err(priv);
 return;
}
