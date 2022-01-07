
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ dev_node; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int pcmcia_disable_device (struct pcmcia_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void wl3501_release(struct pcmcia_device *link)
{
 struct net_device *dev = link->priv;


 if (link->dev_node)
  unregister_netdev(dev);

 pcmcia_disable_device(link);
}
