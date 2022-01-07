
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcmcia_device {int open; } ;
struct net_device {int irq; int name; } ;
struct TYPE_3__ {int watchdog; struct pcmcia_device* p_dev; } ;
typedef TYPE_1__ pcnet_dev_t ;


 int DEBUG (int,char*,int ) ;
 TYPE_1__* PRIV (struct net_device*) ;
 int del_timer_sync (int *) ;
 int ei_close (struct net_device*) ;
 int free_irq (int ,struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;

__attribute__((used)) static int pcnet_close(struct net_device *dev)
{
    pcnet_dev_t *info = PRIV(dev);
    struct pcmcia_device *link = info->p_dev;

    DEBUG(2, "pcnet_close('%s')\n", dev->name);

    ei_close(dev);
    free_irq(dev->irq, dev);

    link->open--;
    netif_stop_queue(dev);
    del_timer_sync(&info->watchdog);

    return 0;
}
