
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {scalar_t__ dev_node; struct net_device* priv; } ;
struct net_device {int dummy; } ;


 int DEBUG (int ,char*,struct pcmcia_device*) ;
 int free_netdev (struct net_device*) ;
 int smc91c92_release (struct pcmcia_device*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void smc91c92_detach(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;

    DEBUG(0, "smc91c92_detach(0x%p)\n", link);

    if (link->dev_node)
 unregister_netdev(dev);

    smc91c92_release(link);

    free_netdev(dev);
}
