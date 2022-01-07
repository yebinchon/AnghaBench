
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;
struct cpmac_priv {int phy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 int SIOCGMIIPHY ;
 int SIOCGMIIREG ;
 int SIOCSMIIREG ;
 int if_mii (struct ifreq*) ;
 struct cpmac_priv* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int cpmac_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct cpmac_priv *priv = netdev_priv(dev);
 if (!(netif_running(dev)))
  return -EINVAL;
 if (!priv->phy)
  return -EINVAL;
 if ((cmd == SIOCGMIIPHY) || (cmd == SIOCGMIIREG) ||
     (cmd == SIOCSMIIREG))
  return phy_mii_ioctl(priv->phy, if_mii(ifr), cmd);

 return -EOPNOTSUPP;
}
