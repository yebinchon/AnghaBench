
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {struct com20020_dev_t* priv; scalar_t__ dev_node; } ;
struct net_device {scalar_t__ irq; } ;
struct com20020_dev_t {struct net_device* dev; } ;


 int DEBUG (int,char*,...) ;
 int com20020_release (struct pcmcia_device*) ;
 int free_irq (scalar_t__,struct net_device*) ;
 int free_netdev (struct net_device*) ;
 int kfree (struct com20020_dev_t*) ;
 int unregister_netdev (struct net_device*) ;

__attribute__((used)) static void com20020_detach(struct pcmcia_device *link)
{
    struct com20020_dev_t *info = link->priv;
    struct net_device *dev = info->dev;

    DEBUG(1,"detach...\n");

    DEBUG(0, "com20020_detach(0x%p)\n", link);

    if (link->dev_node) {
 DEBUG(1,"unregister...\n");

 unregister_netdev(dev);





 if (dev->irq)
     free_irq(dev->irq, dev);
    }

    com20020_release(link);


    DEBUG(1,"unlinking...\n");
    if (link->priv)
    {
 dev = info->dev;
 if (dev)
 {
     DEBUG(1,"kfree...\n");
     free_netdev(dev);
 }
 DEBUG(1,"kfree2...\n");
 kfree(info);
    }

}
