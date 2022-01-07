
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int IntType; int Attributes; } ;
struct TYPE_5__ {int IRQInfo1; int Attributes; } ;
struct pcmcia_device {TYPE_2__ conf; TYPE_1__ irq; struct net_device* priv; } ;
struct net_device {int * netdev_ops; } ;
struct TYPE_7__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_3__ pcnet_dev_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 TYPE_3__* PRIV (struct net_device*) ;
 struct net_device* __alloc_ei_netdev (int) ;
 int pcnet_config (struct pcmcia_device*) ;
 int pcnet_netdev_ops ;

__attribute__((used)) static int pcnet_probe(struct pcmcia_device *link)
{
    pcnet_dev_t *info;
    struct net_device *dev;

    DEBUG(0, "pcnet_attach()\n");


    dev = __alloc_ei_netdev(sizeof(pcnet_dev_t));
    if (!dev) return -ENOMEM;
    info = PRIV(dev);
    info->p_dev = link;
    link->priv = dev;

    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;

    dev->netdev_ops = &pcnet_netdev_ops;

    return pcnet_config(link);
}
