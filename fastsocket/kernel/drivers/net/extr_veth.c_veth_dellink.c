
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {struct net_device* peer; } ;
struct net_device {int dummy; } ;


 struct veth_priv* netdev_priv (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

__attribute__((used)) static void veth_dellink(struct net_device *dev)
{
 struct veth_priv *priv;
 struct net_device *peer;

 priv = netdev_priv(dev);
 peer = priv->peer;

 unregister_netdevice(dev);
 unregister_netdevice(peer);
}
