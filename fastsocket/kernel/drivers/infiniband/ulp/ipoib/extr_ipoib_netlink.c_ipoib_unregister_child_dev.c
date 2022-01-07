
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ipoib_dev_priv {int vlan_mutex; int list; struct net_device* parent; } ;


 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct ipoib_dev_priv* netdev_priv (struct net_device*) ;
 int unregister_netdevice_queue (struct net_device*,int *) ;

__attribute__((used)) static void ipoib_unregister_child_dev(struct net_device *dev)
{
 struct ipoib_dev_priv *priv, *ppriv;

 priv = netdev_priv(dev);
 ppriv = netdev_priv(priv->parent);

 mutex_lock(&ppriv->vlan_mutex);
 unregister_netdevice_queue(dev, ((void*)0));
 list_del(&priv->list);
 mutex_unlock(&ppriv->vlan_mutex);
}
