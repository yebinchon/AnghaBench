
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {int name; } ;
struct TYPE_3__ {struct pcmcia_device* finder; } ;
typedef TYPE_1__ ray_dev_t ;


 int DEBUG (int,char*,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int ray_dev_close(struct net_device *dev)
{
 ray_dev_t *local = netdev_priv(dev);
 struct pcmcia_device *link;
 link = local->finder;

 DEBUG(1, "ray_dev_close('%s')\n", dev->name);

 link->open--;
 netif_stop_queue(dev);






 return 0;
}
