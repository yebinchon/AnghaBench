
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_10__ {size_t free; int len; TYPE_4__* queue; int tail; } ;
struct TYPE_7__ {int speed; int fir_base; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct via_ircc_cb {int chip_id; int new_speed; int lock; TYPE_5__ tx_fifo; TYPE_2__ io; TYPE_1__ st_fifo; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_8__ {int tx_bytes; } ;
struct net_device {void* trans_start; TYPE_3__ stats; } ;
typedef int netdev_tx_t ;
typedef int __u32 ;
struct TYPE_9__ {int start; scalar_t__ len; } ;


 int NETDEV_TX_OK ;
 int dev_kfree_skb (struct sk_buff*) ;
 int iodelay (int) ;
 int irda_get_next_speed (struct sk_buff*) ;
 void* jiffies ;
 struct via_ircc_cb* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int skb_copy_from_linear_data (struct sk_buff*,int ,scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int udelay (int) ;
 int via_ircc_change_speed (struct via_ircc_cb*,int) ;
 int via_ircc_dma_xmit (struct via_ircc_cb*,int ) ;

__attribute__((used)) static netdev_tx_t via_ircc_hard_xmit_fir(struct sk_buff *skb,
      struct net_device *dev)
{
 struct via_ircc_cb *self;
 u16 iobase;
 __u32 speed;
 unsigned long flags;

 self = netdev_priv(dev);
 iobase = self->io.fir_base;

 if (self->st_fifo.len)
  return NETDEV_TX_OK;
 if (self->chip_id == 0x3076)
  iodelay(1500);
 else
  udelay(1500);
 netif_stop_queue(dev);
 speed = irda_get_next_speed(skb);
 if ((speed != self->io.speed) && (speed != -1)) {
  if (!skb->len) {
   via_ircc_change_speed(self, speed);
   dev->trans_start = jiffies;
   dev_kfree_skb(skb);
   return NETDEV_TX_OK;
  } else
   self->new_speed = speed;
 }
 spin_lock_irqsave(&self->lock, flags);
 self->tx_fifo.queue[self->tx_fifo.free].start = self->tx_fifo.tail;
 self->tx_fifo.queue[self->tx_fifo.free].len = skb->len;

 self->tx_fifo.tail += skb->len;
 dev->stats.tx_bytes += skb->len;
 skb_copy_from_linear_data(skb,
        self->tx_fifo.queue[self->tx_fifo.free].start, skb->len);
 self->tx_fifo.len++;
 self->tx_fifo.free++;

 via_ircc_dma_xmit(self, iobase);


 dev->trans_start = jiffies;
 dev_kfree_skb(skb);
 spin_unlock_irqrestore(&self->lock, flags);
 return NETDEV_TX_OK;

}
