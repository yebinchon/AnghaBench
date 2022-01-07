
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Attributes; struct net_device* Instance; int * Handler; int IRQInfo1; } ;
struct TYPE_8__ {int ConfigIndex; int IntType; int Attributes; } ;
struct TYPE_7__ {int IOAddrLines; int Attributes1; scalar_t__ NumPorts1; } ;
struct pcmcia_device {TYPE_3__ irq; struct net_device* priv; TYPE_2__ conf; TYPE_1__ io; } ;
struct net_device {TYPE_4__* wireless_data; int * wireless_handlers; int * netdev_ops; } ;
struct TYPE_10__ {int * spy_data; } ;
struct TYPE_11__ {int timer; TYPE_4__ wireless_data; int spy_data; scalar_t__ num_multi; int authentication_state; int card_status; struct pcmcia_device* finder; } ;
typedef TYPE_5__ ray_dev_t ;


 int CARD_INSERTED ;
 int CONF_ENABLE_IRQ ;
 int DEBUG (int,char*,...) ;
 int ENOMEM ;
 int INT_MEMORY_AND_IO ;
 int IO_DATA_PATH_WIDTH_8 ;
 int IRQ_HANDLE_PRESENT ;
 int IRQ_LEVEL_ID ;
 int IRQ_TYPE_DYNAMIC_SHARING ;
 int SET_ETHTOOL_OPS (struct net_device*,int *) ;
 int UNAUTHENTICATED ;
 struct net_device* alloc_etherdev (int) ;
 int init_timer (int *) ;
 int netdev_ethtool_ops ;
 TYPE_5__* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int ray_config (struct pcmcia_device*) ;
 int ray_handler_def ;
 int ray_interrupt ;
 int ray_netdev_ops ;
 struct pcmcia_device* this_device ;

__attribute__((used)) static int ray_probe(struct pcmcia_device *p_dev)
{
 ray_dev_t *local;
 struct net_device *dev;

 DEBUG(1, "ray_attach()\n");


 dev = alloc_etherdev(sizeof(ray_dev_t));
 if (!dev)
  goto fail_alloc_dev;

 local = netdev_priv(dev);
 local->finder = p_dev;


 p_dev->io.NumPorts1 = 0;
 p_dev->io.Attributes1 = IO_DATA_PATH_WIDTH_8;
 p_dev->io.IOAddrLines = 5;


 p_dev->irq.Attributes = IRQ_TYPE_DYNAMIC_SHARING | IRQ_HANDLE_PRESENT;
 p_dev->irq.IRQInfo1 = IRQ_LEVEL_ID;
 p_dev->irq.Handler = &ray_interrupt;


 p_dev->conf.Attributes = CONF_ENABLE_IRQ;
 p_dev->conf.IntType = INT_MEMORY_AND_IO;
 p_dev->conf.ConfigIndex = 1;

 p_dev->priv = dev;
 p_dev->irq.Instance = dev;

 local->finder = p_dev;
 local->card_status = CARD_INSERTED;
 local->authentication_state = UNAUTHENTICATED;
 local->num_multi = 0;
 DEBUG(2, "ray_attach p_dev = %p,  dev = %p,  local = %p, intr = %p\n",
       p_dev, dev, local, &ray_interrupt);


 dev->netdev_ops = &ray_netdev_ops;
 SET_ETHTOOL_OPS(dev, &netdev_ethtool_ops);
 dev->wireless_handlers = &ray_handler_def;






 DEBUG(2, "ray_cs ray_attach calling ether_setup.)\n");
 netif_stop_queue(dev);

 init_timer(&local->timer);

 this_device = p_dev;
 return ray_config(p_dev);

fail_alloc_dev:
 return -ENOMEM;
}
