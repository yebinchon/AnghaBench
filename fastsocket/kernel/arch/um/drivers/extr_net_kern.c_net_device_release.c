
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uml_net_private {int user; int (* remove ) (int *) ;} ;
struct uml_net {int list; struct net_device* dev; } ;
struct net_device {int dummy; } ;
struct device {int dummy; } ;


 struct uml_net* dev_get_drvdata (struct device*) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct uml_net*) ;
 int list_del (int *) ;
 struct uml_net_private* netdev_priv (struct net_device*) ;
 int stub1 (int *) ;

__attribute__((used)) static void net_device_release(struct device *dev)
{
 struct uml_net *device = dev_get_drvdata(dev);
 struct net_device *netdev = device->dev;
 struct uml_net_private *lp = netdev_priv(netdev);

 if (lp->remove != ((void*)0))
  (*lp->remove)(&lp->user);
 list_del(&device->list);
 kfree(device);
 free_netdev(netdev);
}
