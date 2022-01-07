
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct channel_data {TYPE_1__* cosa; scalar_t__ usage; int * tx_skb; int * rx_skb; } ;
struct TYPE_2__ {int lock; int usage; } ;


 int cosa_disable_rx (struct channel_data*) ;
 struct channel_data* dev_to_chan (struct net_device*) ;
 int hdlc_close (struct net_device*) ;
 int kfree_skb (int *) ;
 int netif_stop_queue (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int cosa_net_close(struct net_device *dev)
{
 struct channel_data *chan = dev_to_chan(dev);
 unsigned long flags;

 netif_stop_queue(dev);
 hdlc_close(dev);
 cosa_disable_rx(chan);
 spin_lock_irqsave(&chan->cosa->lock, flags);
 if (chan->rx_skb) {
  kfree_skb(chan->rx_skb);
  chan->rx_skb = ((void*)0);
 }
 if (chan->tx_skb) {
  kfree_skb(chan->tx_skb);
  chan->tx_skb = ((void*)0);
 }
 chan->usage = 0;
 chan->cosa->usage--;
 spin_unlock_irqrestore(&chan->cosa->lock, flags);
 return 0;
}
