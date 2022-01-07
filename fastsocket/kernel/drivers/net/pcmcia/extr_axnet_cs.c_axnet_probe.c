
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
struct net_device {int watchdog_timeo; int * netdev_ops; } ;
struct ei_device {int page_lock; } ;
struct TYPE_7__ {struct pcmcia_device* p_dev; } ;
typedef TYPE_3__ axnet_dev_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 TYPE_3__* PRIV (struct net_device*) ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int axnet_config (struct pcmcia_device*) ;
 int axnet_netdev_ops ;
 int netdev_ethtool_ops ;
 struct ei_device* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int axnet_probe(struct pcmcia_device *link)
{
    axnet_dev_t *info;
    struct net_device *dev;
    struct ei_device *ei_local;

    DEBUG(0, "axnet_attach()\n");

    dev = alloc_etherdev(sizeof(struct ei_device) + sizeof(axnet_dev_t));
    if (!dev)
 return -ENOMEM;

    ei_local = netdev_priv(dev);
    spin_lock_init(&ei_local->page_lock);

    info = PRIV(dev);
    info->p_dev = link;
    link->priv = dev;
    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;

    dev->netdev_ops = &axnet_netdev_ops;

    SET_ETHTOOL_OPS(dev, &netdev_ethtool_ops);
    dev->watchdog_timeo = TX_TIMEOUT;

    return axnet_config(link);
}
