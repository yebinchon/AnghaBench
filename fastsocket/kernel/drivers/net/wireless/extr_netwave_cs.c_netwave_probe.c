
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int Attributes; struct net_device* Instance; int * Handler; int IRQInfo1; } ;
struct TYPE_7__ {int ConfigIndex; int IntType; int Attributes; } ;
struct TYPE_6__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ irq; TYPE_2__ conf; TYPE_1__ io; struct net_device* priv; } ;
struct net_device {int watchdog_timeo; int * wireless_handlers; int * netdev_ops; } ;
struct TYPE_9__ {int spinlock; struct pcmcia_device* p_dev; } ;
typedef TYPE_4__ netwave_private ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 TYPE_4__* netdev_priv (struct net_device*) ;
 int netwave_handler_def ;
 int netwave_interrupt ;
 int netwave_netdev_ops ;
 int netwave_pcmcia_config (struct pcmcia_device*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int netwave_probe(struct pcmcia_device *link)
{
    struct net_device *dev;
    netwave_private *priv;

    DEBUG(0, "netwave_attach()\n");


    dev = alloc_etherdev(sizeof(netwave_private));
    if (!dev)
 return -ENOMEM;
    priv = netdev_priv(dev);
    priv->p_dev = link;
    link->priv = dev;


    link->io.NumPorts1 = 16;
    link->io.Attributes1 = IO_DATA_PATH_WIDTH_16;


    link->io.IOAddrLines = 5;


    link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING | IRQ_HANDLE_PRESENT;
    link->irq.IRQInfo1 = IRQ_LEVEL_ID;
    link->irq.Handler = &netwave_interrupt;


    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;
    link->conf.ConfigIndex = 1;



    spin_lock_init(&priv->spinlock);


    dev->netdev_ops = &netwave_netdev_ops;

    dev->wireless_handlers = &netwave_handler_def;

    dev->watchdog_timeo = TX_TIMEOUT;

    link->irq.Instance = dev;

    return netwave_pcmcia_config( link);
}
