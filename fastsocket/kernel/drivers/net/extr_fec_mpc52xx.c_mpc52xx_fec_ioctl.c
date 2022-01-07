
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct mpc52xx_fec_priv {int phydev; } ;
struct ifreq {int dummy; } ;


 int ENOTSUPP ;
 int if_mii (struct ifreq*) ;
 struct mpc52xx_fec_priv* netdev_priv (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int mpc52xx_fec_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct mpc52xx_fec_priv *priv = netdev_priv(dev);

 if (!priv->phydev)
  return -ENOTSUPP;

 return phy_mii_ioctl(priv->phydev, if_mii(rq), cmd);
}
