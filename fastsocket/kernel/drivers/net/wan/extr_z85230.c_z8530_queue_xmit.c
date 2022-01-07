
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct z8530_channel {size_t tx_dma_used; int lock; struct sk_buff* tx_next_skb; scalar_t__ tx_next_ptr; scalar_t__* tx_dma_buf; scalar_t__ dma_tx; int netdevice; } ;
struct sk_buff {scalar_t__ data; scalar_t__ len; } ;
typedef int netdev_tx_t ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_OK ;
 int RT_LOCK ;
 int RT_UNLOCK ;
 int netif_stop_queue (int ) ;
 int skb_copy_from_linear_data (struct sk_buff*,scalar_t__,scalar_t__) ;
 scalar_t__ spans_boundary (struct sk_buff*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 scalar_t__ virt_to_bus (scalar_t__) ;
 int z8530_tx_begin (struct z8530_channel*) ;

netdev_tx_t z8530_queue_xmit(struct z8530_channel *c, struct sk_buff *skb)
{
 unsigned long flags;

 netif_stop_queue(c->netdevice);
 if(c->tx_next_skb)
  return NETDEV_TX_BUSY;
 if(c->dma_tx && ((unsigned long)(virt_to_bus(skb->data+skb->len))>=16*1024*1024 || spans_boundary(skb)))
 {







  c->tx_next_ptr=c->tx_dma_buf[c->tx_dma_used];
  c->tx_dma_used^=1;
  skb_copy_from_linear_data(skb, c->tx_next_ptr, skb->len);
 }
 else
  c->tx_next_ptr=skb->data;
 RT_LOCK;
 c->tx_next_skb=skb;
 RT_UNLOCK;

 spin_lock_irqsave(c->lock, flags);
 z8530_tx_begin(c);
 spin_unlock_irqrestore(c->lock, flags);

 return NETDEV_TX_OK;
}
