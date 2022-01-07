
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct net_device* Instance; int Handler; } ;
struct TYPE_5__ {int ConfigIndex; int IntType; int Attributes; } ;
struct pcmcia_device {TYPE_2__ irq; TYPE_1__ conf; struct net_device* priv; } ;
struct net_device {int watchdog_timeo; int * ethtool_ops; int * netdev_ops; } ;
struct TYPE_7__ {int tx_timeout_task; struct pcmcia_device* p_dev; struct net_device* dev; } ;
typedef TYPE_3__ local_info_t ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INIT_WORK (int *,int ) ;
 int INT_MEMORY_AND_IO ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int netdev_ethtool_ops ;
 int netdev_ops ;
 TYPE_3__* netdev_priv (struct net_device*) ;
 int xirc2ps_config (struct pcmcia_device*) ;
 int xirc2ps_interrupt ;
 int xirc2ps_tx_timeout_task ;

__attribute__((used)) static int
xirc2ps_probe(struct pcmcia_device *link)
{
    struct net_device *dev;
    local_info_t *local;

    DEBUG(0, "attach()\n");


    dev = alloc_etherdev(sizeof(local_info_t));
    if (!dev)
     return -ENOMEM;
    local = netdev_priv(dev);
    local->dev = dev;
    local->p_dev = link;
    link->priv = dev;


    link->conf.Attributes = CONF_ENABLE_IRQ;
    link->conf.IntType = INT_MEMORY_AND_IO;
    link->conf.ConfigIndex = 1;
    link->irq.Handler = xirc2ps_interrupt;
    link->irq.Instance = dev;


    dev->netdev_ops = &netdev_ops;
    dev->ethtool_ops = &netdev_ethtool_ops;
    dev->watchdog_timeo = TX_TIMEOUT;
    INIT_WORK(&local->tx_timeout_task, xirc2ps_tx_timeout_task);

    return xirc2ps_config(link);
}
