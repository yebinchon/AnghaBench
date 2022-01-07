
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wan_device {int maddr; int msize; int ioport; int dma; int irq; } ;
struct net_device {unsigned long mem_start; unsigned long mem_end; int tx_queue_len; int flags; int base_addr; int dma; int irq; scalar_t__ dev_addr; } ;
struct cycx_x25_channel {int lcn; int svc; struct cycx_device* card; } ;
struct cycx_device {struct wan_device wandev; } ;
typedef int __be16 ;


 int IFF_NOARP ;
 int WAN_DISCONNECTED ;
 int cycx_x25_set_chan_state (struct net_device*,int ) ;
 int htons (int ) ;
 struct cycx_x25_channel* netdev_priv (struct net_device*) ;

__attribute__((used)) static int cycx_netdevice_init(struct net_device *dev)
{
 struct cycx_x25_channel *chan = netdev_priv(dev);
 struct cycx_device *card = chan->card;
 struct wan_device *wandev = &card->wandev;

 if (!chan->svc)
  *(__be16*)dev->dev_addr = htons(chan->lcn);


 dev->irq = wandev->irq;
 dev->dma = wandev->dma;
 dev->base_addr = wandev->ioport;
 dev->mem_start = (unsigned long)wandev->maddr;
 dev->mem_end = (unsigned long)(wandev->maddr +
        wandev->msize - 1);
 dev->flags |= IFF_NOARP;


 dev->tx_queue_len = 10;


 cycx_x25_set_chan_state(dev, WAN_DISCONNECTED);

 return 0;
}
