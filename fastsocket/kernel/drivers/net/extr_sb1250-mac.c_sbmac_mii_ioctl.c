
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbmac_softc {int phy_dev; } ;
struct net_device {int dummy; } ;
struct ifreq {int dummy; } ;


 int EINVAL ;
 int if_mii (struct ifreq*) ;
 struct sbmac_softc* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int phy_mii_ioctl (int ,int ,int) ;

__attribute__((used)) static int sbmac_mii_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
 struct sbmac_softc *sc = netdev_priv(dev);

 if (!netif_running(dev) || !sc->phy_dev)
  return -EINVAL;

 return phy_mii_ioctl(sc->phy_dev, if_mii(rq), cmd);
}
