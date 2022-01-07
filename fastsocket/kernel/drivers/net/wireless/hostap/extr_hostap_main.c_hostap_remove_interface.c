
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct hostap_interface {TYPE_1__* local; int list; } ;
struct TYPE_2__ {struct net_device* stadev; struct net_device* apdev; struct net_device* ddev; } ;


 int list_del (int *) ;
 struct hostap_interface* netdev_priv (struct net_device*) ;
 int unregister_netdev (struct net_device*) ;
 int unregister_netdevice (struct net_device*) ;

void hostap_remove_interface(struct net_device *dev, int rtnl_locked,
        int remove_from_list)
{
 struct hostap_interface *iface;

 if (!dev)
  return;

 iface = netdev_priv(dev);

 if (remove_from_list) {
  list_del(&iface->list);
 }

 if (dev == iface->local->ddev)
  iface->local->ddev = ((void*)0);
 else if (dev == iface->local->apdev)
  iface->local->apdev = ((void*)0);
 else if (dev == iface->local->stadev)
  iface->local->stadev = ((void*)0);

 if (rtnl_locked)
  unregister_netdevice(dev);
 else
  unregister_netdev(dev);



}
