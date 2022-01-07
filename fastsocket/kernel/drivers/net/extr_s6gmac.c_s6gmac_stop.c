
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s6gmac {scalar_t__ tx_skb_i; scalar_t__ tx_skb_o; scalar_t__ rx_skb_i; scalar_t__ rx_skb_o; int lock; int * rx_skb; int * tx_skb; int phydev; } ;
struct net_device {int dummy; } ;


 size_t S6_NUM_RX_SKB ;
 size_t S6_NUM_TX_SKB ;
 int dev_kfree_skb (int ) ;
 struct s6gmac* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int phy_stop (int ) ;
 int s6gmac_init_dmac (struct net_device*) ;
 int s6gmac_stop_device (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int s6gmac_stop(struct net_device *dev)
{
 struct s6gmac *pd = netdev_priv(dev);
 unsigned long flags;
 netif_stop_queue(dev);
 phy_stop(pd->phydev);
 spin_lock_irqsave(&pd->lock, flags);
 s6gmac_init_dmac(dev);
 s6gmac_stop_device(dev);
 while (pd->tx_skb_i != pd->tx_skb_o)
  dev_kfree_skb(pd->tx_skb[(pd->tx_skb_o++) % S6_NUM_TX_SKB]);
 while (pd->rx_skb_i != pd->rx_skb_o)
  dev_kfree_skb(pd->rx_skb[(pd->rx_skb_o++) % S6_NUM_RX_SKB]);
 spin_unlock_irqrestore(&pd->lock, flags);
 return 0;
}
