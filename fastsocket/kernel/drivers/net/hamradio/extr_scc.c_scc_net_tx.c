
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct sk_buff {int len; int* data; } ;
struct TYPE_8__ {scalar_t__ fulldup; int waittime; } ;
struct TYPE_7__ {int bufsize; scalar_t__ tx_state; int txframes; } ;
struct TYPE_5__ {int tx_bytes; int tx_packets; int tx_dropped; } ;
struct scc_channel {int lock; TYPE_4__ kiss; TYPE_3__ stat; int tx_queue; TYPE_2__* dev; TYPE_1__ dev_stat; } ;
struct net_device {int trans_start; scalar_t__ ml_priv; } ;
typedef int netdev_tx_t ;
struct TYPE_6__ {scalar_t__ tx_queue_len; } ;


 scalar_t__ KISS_DUPLEX_HALF ;
 int NETDEV_TX_OK ;
 scalar_t__ TXS_BUSY ;
 scalar_t__ TXS_IDLE ;
 scalar_t__ TXS_IDLE2 ;
 int __scc_start_tx_timer (struct scc_channel*,int ,int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 int scc_set_param (struct scc_channel*,char,int) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_pull (struct sk_buff*,int) ;
 scalar_t__ skb_queue_len (int *) ;
 int skb_queue_tail (int *,struct sk_buff*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int t_dwait ;

__attribute__((used)) static netdev_tx_t scc_net_tx(struct sk_buff *skb, struct net_device *dev)
{
 struct scc_channel *scc = (struct scc_channel *) dev->ml_priv;
 unsigned long flags;
 char kisscmd;

 if (skb->len > scc->stat.bufsize || skb->len < 2) {
  scc->dev_stat.tx_dropped++;
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 scc->dev_stat.tx_packets++;
 scc->dev_stat.tx_bytes += skb->len;
 scc->stat.txframes++;

 kisscmd = *skb->data & 0x1f;
 skb_pull(skb, 1);

 if (kisscmd) {
  scc_set_param(scc, kisscmd, *skb->data);
  dev_kfree_skb(skb);
  return NETDEV_TX_OK;
 }

 spin_lock_irqsave(&scc->lock, flags);

 if (skb_queue_len(&scc->tx_queue) > scc->dev->tx_queue_len) {
  struct sk_buff *skb_del;
  skb_del = skb_dequeue(&scc->tx_queue);
  dev_kfree_skb(skb_del);
 }
 skb_queue_tail(&scc->tx_queue, skb);
 dev->trans_start = jiffies;
 if(scc->stat.tx_state == TXS_IDLE || scc->stat.tx_state == TXS_IDLE2) {
  scc->stat.tx_state = TXS_BUSY;
  if (scc->kiss.fulldup == KISS_DUPLEX_HALF)
   __scc_start_tx_timer(scc, t_dwait, scc->kiss.waittime);
  else
   __scc_start_tx_timer(scc, t_dwait, 0);
 }
 spin_unlock_irqrestore(&scc->lock, flags);
 return NETDEV_TX_OK;
}
