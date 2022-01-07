
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct s6gmac {int tx_chan; int tx_dma; scalar_t__ tx_skb_o; int * tx_skb; scalar_t__ tx_skb_i; } ;
struct net_device {int dummy; } ;


 size_t S6_NUM_TX_SKB ;
 int dev_kfree_skb_irq (int ) ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int netif_wake_queue (struct net_device*) ;
 int s6dmac_fifo_full (int ,int ) ;
 scalar_t__ s6dmac_pending_count (int ,int ) ;

__attribute__((used)) static void s6gmac_tx_interrupt(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 while (((u8)(pd->tx_skb_i - pd->tx_skb_o)) >
   s6dmac_pending_count(pd->tx_dma, pd->tx_chan)) {
  dev_kfree_skb_irq(pd->tx_skb[(pd->tx_skb_o++) % S6_NUM_TX_SKB]);
 }
 if (!s6dmac_fifo_full(pd->tx_dma, pd->tx_chan))
  netif_wake_queue(dev);
}
