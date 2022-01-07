
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {unsigned char* data; unsigned int len; } ;
struct netx_eth_priv {int lock; int id; scalar_t__ sram_base; } ;
struct TYPE_2__ {unsigned int tx_bytes; int tx_packets; } ;
struct net_device {TYPE_1__ stats; int trans_start; } ;


 int FIFO_PTR_FRAMELEN (unsigned int) ;
 int FIFO_PTR_FRAMENO (int) ;
 int FIFO_PTR_SEGMENT (int ) ;
 int NETDEV_TX_OK ;
 int REQ_FIFO_PORT_LO (int ) ;
 int dev_kfree_skb (struct sk_buff*) ;
 int jiffies ;
 int memcpy_toio (scalar_t__,void*,unsigned int) ;
 int memset_io (scalar_t__,int ,int) ;
 struct netx_eth_priv* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pfifo_push (int ,int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int
netx_eth_hard_start_xmit(struct sk_buff *skb, struct net_device *ndev)
{
 struct netx_eth_priv *priv = netdev_priv(ndev);
 unsigned char *buf = skb->data;
 unsigned int len = skb->len;

 spin_lock_irq(&priv->lock);
 memcpy_toio(priv->sram_base + 1560, (void *)buf, len);
 if (len < 60) {
  memset_io(priv->sram_base + 1560 + len, 0, 60 - len);
  len = 60;
 }

 pfifo_push(REQ_FIFO_PORT_LO(priv->id),
            FIFO_PTR_SEGMENT(priv->id) |
            FIFO_PTR_FRAMENO(1) |
            FIFO_PTR_FRAMELEN(len));

 ndev->trans_start = jiffies;
 ndev->stats.tx_packets++;
 ndev->stats.tx_bytes += skb->len;

 netif_stop_queue(ndev);
 spin_unlock_irq(&priv->lock);
 dev_kfree_skb(skb);

 return NETDEV_TX_OK;
}
