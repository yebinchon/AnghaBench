
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int ConfigIndex; int IntType; int Attributes; } ;
struct TYPE_5__ {int Attributes; struct net_device* Instance; int * Handler; int IRQInfo1; } ;
struct TYPE_4__ {int NumPorts1; int Attributes1; } ;
struct pcmcia_device {TYPE_3__ conf; TYPE_2__ irq; TYPE_1__ io; struct net_device* priv; } ;
struct net_device {int watchdog_timeo; int * netdev_ops; } ;
struct el3_private {int window_lock; struct pcmcia_device* p_dev; } ;


 int CONF_ENABLE_IRQ ;
 int DEBUG (int ,char*) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_16 ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int TX_TIMEOUT ;
 struct net_device* alloc_etherdev (int) ;
 int el3_interrupt ;
 int el3_netdev_ops ;
 int netdev_ethtool_ops ;
 struct el3_private* netdev_priv (struct net_device*) ;
 int spin_lock_init (int *) ;
 int tc574_config (struct pcmcia_device*) ;

__attribute__((used)) static int tc574_probe(struct pcmcia_device *link)
{
 struct el3_private *lp;
 struct net_device *dev;

 DEBUG(0, "3c574_attach()\n");


 dev = alloc_etherdev(sizeof(struct el3_private));
 if (!dev)
  return -ENOMEM;
 lp = netdev_priv(dev);
 link->priv = dev;
 lp->p_dev = link;

 spin_lock_init(&lp->window_lock);
 link->io.NumPorts1 = 32;
 link->io.Attributes1 = IO_DATA_PATH_WIDTH_16;
 link->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING|IRQ_HANDLE_PRESENT;
 link->irq.IRQInfo1 = IRQ_LEVEL_ID;
 link->irq.Handler = &el3_interrupt;
 link->irq.Instance = dev;
 link->conf.Attributes = CONF_ENABLE_IRQ;
 link->conf.IntType = INT_MEMORY_AND_IO;
 link->conf.ConfigIndex = 1;

 dev->netdev_ops = &el3_netdev_ops;
 SET_ETHTOOL_OPS(dev, &netdev_ethtool_ops);
 dev->watchdog_timeo = TX_TIMEOUT;

 return tc574_config(link);
}
