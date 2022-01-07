
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int protocol; } ;
struct net_device {int dev; } ;
struct ethoc_bd {int stat; int addr; } ;
struct TYPE_2__ {int rx_bytes; int rx_dropped; int rx_packets; } ;
struct ethoc {unsigned int num_tx; unsigned int cur_rx; unsigned int num_rx; TYPE_1__ stats; } ;


 int RX_BD_EMPTY ;
 int RX_BD_STATS ;
 int dev_warn (int *,char*) ;
 int eth_type_trans (struct sk_buff*,struct net_device*) ;
 int ethoc_read_bd (struct ethoc*,unsigned int,struct ethoc_bd*) ;
 scalar_t__ ethoc_update_rx_stats (struct ethoc*,struct ethoc_bd*) ;
 int ethoc_write_bd (struct ethoc*,unsigned int,struct ethoc_bd*) ;
 scalar_t__ likely (struct sk_buff*) ;
 int memcpy_fromio (int ,void*,int) ;
 scalar_t__ net_ratelimit () ;
 struct sk_buff* netdev_alloc_skb (struct net_device*,int) ;
 struct ethoc* netdev_priv (struct net_device*) ;
 int netif_receive_skb (struct sk_buff*) ;
 void* phys_to_virt (int ) ;
 int skb_put (struct sk_buff*,int) ;
 int skb_reserve (struct sk_buff*,int) ;

__attribute__((used)) static int ethoc_rx(struct net_device *dev, int limit)
{
 struct ethoc *priv = netdev_priv(dev);
 int count;

 for (count = 0; count < limit; ++count) {
  unsigned int entry;
  struct ethoc_bd bd;

  entry = priv->num_tx + (priv->cur_rx % priv->num_rx);
  ethoc_read_bd(priv, entry, &bd);
  if (bd.stat & RX_BD_EMPTY)
   break;

  if (ethoc_update_rx_stats(priv, &bd) == 0) {
   int size = bd.stat >> 16;
   struct sk_buff *skb = netdev_alloc_skb(dev, size);

   size -= 4;
   skb_reserve(skb, 2);

   if (likely(skb)) {
    void *src = phys_to_virt(bd.addr);
    memcpy_fromio(skb_put(skb, size), src, size);
    skb->protocol = eth_type_trans(skb, dev);
    priv->stats.rx_packets++;
    priv->stats.rx_bytes += size;
    netif_receive_skb(skb);
   } else {
    if (net_ratelimit())
     dev_warn(&dev->dev, "low on memory - "
       "packet dropped\n");

    priv->stats.rx_dropped++;
    break;
   }
  }


  bd.stat &= ~RX_BD_STATS;
  bd.stat |= RX_BD_EMPTY;
  ethoc_write_bd(priv, entry, &bd);
  priv->cur_rx++;
 }

 return count;
}
