
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int * spy_data; } ;
struct wl3501_card {TYPE_3__ wireless_data; struct pcmcia_device* p_dev; int spy_data; } ;
struct TYPE_8__ {int Attributes; struct net_device* Instance; int Handler; int IRQInfo1; } ;
struct TYPE_6__ {int ConfigIndex; int IntType; int Attributes; } ;
struct TYPE_5__ {int NumPorts1; int IOAddrLines; int Attributes1; } ;
struct pcmcia_device {TYPE_4__ irq; struct net_device* priv; TYPE_2__ conf; TYPE_1__ io; } ;
struct net_device {int watchdog_timeo; int * wireless_handlers; TYPE_3__* wireless_data; int * netdev_ops; } ;


 int CONF_ENABLE_IRQ ;
 int ENOMEM ;
 int HZ ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 struct net_device* alloc_etherdev (int) ;
 struct wl3501_card* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ops ;
 int wl3501_config (struct pcmcia_device*) ;
 int wl3501_handler_def ;
 int wl3501_interrupt ;
 int wl3501_netdev_ops ;

__attribute__((used)) static int wl3501_probe(struct pcmcia_device *p_dev)
{
 struct net_device *dev;
 struct wl3501_card *this;


 p_dev->io.NumPorts1 = 16;
 p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 p_dev->io.IOAddrLines = 5;


 p_dev->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING | IRQ_HANDLE_PRESENT;
 p_dev->irq.IRQInfo1 = IRQ_LEVEL_ID;
 p_dev->irq.Handler = wl3501_interrupt;


 p_dev->conf.Attributes = CONF_ENABLE_IRQ;
 p_dev->conf.IntType = INT_MEMORY_AND_IO;
 p_dev->conf.ConfigIndex = 1;

 dev = alloc_etherdev(sizeof(struct wl3501_card));
 if (!dev)
  goto out_link;


 dev->netdev_ops = &wl3501_netdev_ops;
 dev->watchdog_timeo = 5 * HZ;

 this = netdev_priv(dev);
 this->wireless_data.spy_data = &this->spy_data;
 this->p_dev = p_dev;
 dev->wireless_data = &this->wireless_data;
 dev->wireless_handlers = &wl3501_handler_def;
 SET_ETHTOOL_OPS(dev, &ops);
 netif_stop_queue(dev);
 p_dev->priv = p_dev->irq.Instance = dev;

 return wl3501_config(p_dev);
out_link:
 return -ENOMEM;
}
