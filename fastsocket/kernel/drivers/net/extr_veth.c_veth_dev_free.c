
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct veth_priv {int stats; } ;
struct net_device {int dummy; } ;


 int free_netdev (struct net_device*) ;
 int free_percpu (int ) ;
 struct veth_priv* netdev_priv (struct net_device*) ;

__attribute__((used)) static void veth_dev_free(struct net_device *dev)
{
 struct veth_priv *priv;

 priv = netdev_priv(dev);
 free_percpu(priv->stats);
 free_netdev(dev);
}
