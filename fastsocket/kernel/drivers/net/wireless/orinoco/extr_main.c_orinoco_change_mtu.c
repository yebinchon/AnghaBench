
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct orinoco_private {scalar_t__ nicbuf_size; } ;
struct net_device {int mtu; } ;
struct ieee80211_hdr {int dummy; } ;


 int EINVAL ;
 scalar_t__ ENCAPS_OVERHEAD ;
 scalar_t__ ETH_HLEN ;
 int ORINOCO_MAX_MTU ;
 int ORINOCO_MIN_MTU ;
 struct orinoco_private* ndev_priv (struct net_device*) ;

int orinoco_change_mtu(struct net_device *dev, int new_mtu)
{
 struct orinoco_private *priv = ndev_priv(dev);

 if ((new_mtu < ORINOCO_MIN_MTU) || (new_mtu > ORINOCO_MAX_MTU))
  return -EINVAL;


 if ((new_mtu + ENCAPS_OVERHEAD + sizeof(struct ieee80211_hdr)) >
      (priv->nicbuf_size - ETH_HLEN))
  return -EINVAL;

 dev->mtu = new_mtu;

 return 0;
}
