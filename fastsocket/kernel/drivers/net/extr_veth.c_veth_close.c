
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {struct net_device* peer; } ;
struct net_device {int dummy; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;

__attribute__((used)) static int veth_close(struct net_device *dev)
{
 struct veth_priv *priv = netdev_priv(dev);

 netif_carrier_off(dev);
 netif_carrier_off(priv->peer);

 return 0;
}
