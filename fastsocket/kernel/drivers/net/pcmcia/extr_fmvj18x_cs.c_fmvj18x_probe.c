
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int IntType; int Attributes; } ;
struct TYPE_7__ {int Attributes; struct net_device* Instance; int * Handler; int IRQInfo1; } ;
struct TYPE_6__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; struct net_device* priv; } ;
struct net_device {int watchdog_timeo; int * netdev_ops; } ;
struct TYPE_9__ {int * base; struct pcmcia_device* p_dev; } ;
typedef TYPE_4__ local_info_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_AUTO ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int fjn_interrupt ;
 int fjn_netdev_ops ;
 int fmvj18x_config (struct pcmcia_device*) ;
 int netdev_ethtool_ops ;
 TYPE_4__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int fmvj18x_probe(struct pcmcia_device *link)
{
    local_info_t *lp;
    struct net_device *dev;

    DEBUG(0, "fmvj18x_attach()\n");


    dev = alloc_etherdev(sizeof(local_info_t));
    if (!dev)
 return -ENOMEM;
    lp = netdev_priv(dev);
    link->priv = dev;
    lp->p_dev = link;
    lp->base = ((void*)0);


    link->io.NumPorts1 = 32;
    link->io.Attributes1 = IO_DATA_PATH_WIDTH_AUTO;
    link->io.IOAddrLines = 5;


    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING|IRQ_HANDLE_PRESENT;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->irq.Handler = &fjn_interrupt;
    link->irq.Instance = dev;


    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;

    dev->netdev_ops = &fjn_netdev_ops;
    dev->watchdog_timeo = TX_TIMEOUT;

    SET_ETHTOOL_OPS(dev, &netdev_ethtool_ops);

    return fmvj18x_config(link);
}
