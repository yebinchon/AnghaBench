
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {struct net_device* peer; } ;
struct net_device {int flags; } ;


 int ENOTCONN ;
 int IFF_UP ;
 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;

__attribute__((used)) static int veth_open(struct net_device *dev)
{
 struct veth_priv *priv;

 priv = netdev_priv(dev);
 if (priv->peer == ((void*)0))
  return -ENOTCONN;

 if (priv->peer->flags & IFF_UP) {
  netif_carrier_on(dev);
  netif_carrier_on(priv->peer);
 }
 return 0;
}
