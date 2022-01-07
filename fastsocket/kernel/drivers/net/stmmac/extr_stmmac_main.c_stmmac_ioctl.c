
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stmmac_priv {int lock; int phydev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;



 int if_mii (struct ifreq*) ;
 struct stmmac_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int stmmac_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct stmmac_priv *priv = netdev_priv(dev);
 int ret = -EOPNOTSUPP;

 if (!netif_running(dev))
  return -EINVAL;

 switch (cmd) {
 case 130:
 case 129:
 case 128:
  if (!priv->phydev)
   return -EINVAL;

  spin_lock(&priv->lock);
  ret = phy_mii_ioctl(priv->phydev, if_mii(rq), cmd);
  spin_unlock(&priv->lock);
 default:
  break;
 }
 return ret;
}
