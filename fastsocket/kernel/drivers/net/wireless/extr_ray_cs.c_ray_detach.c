
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {scalar_t__ dev_node; struct net_device* priv; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int timer; } ;
typedef TYPE_1__ ray_dev_t ;


 int DEBUG (int,char*,...) ;
 int del_timer (int *) ;
 int free_netdev (struct net_device*) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int ray_release (struct pcmcia_device*) ;
 int * this_device ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void ray_detach(struct pcmcia_device *link)
{
 struct net_device *dev;
 ray_dev_t *local;

 DEBUG(1, "ray_detach(0x%p)\n", link);

 this_device = ((void*)0);
 dev = link->priv;

 ray_release(link);

 local = netdev_priv(dev);
 del_timer(&local->timer);

 if (link->priv) {
  if (link->dev_node)
   unregister_netdev(dev);
  free_netdev(dev);
 }
 DEBUG(2, "ray_cs ray_detach ending\n");
}
