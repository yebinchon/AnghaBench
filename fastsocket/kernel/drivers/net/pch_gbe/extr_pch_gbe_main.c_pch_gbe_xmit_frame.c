
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct pch_gbe_tx_ring {int tx_lock; int next_to_clean; int next_to_use; } ;
struct pch_gbe_adapter {struct pch_gbe_tx_ring* tx_ring; } ;
struct net_device {int dummy; } ;


 int NETDEV_TX_BUSY ;
 int NETDEV_TX_LOCKED ;
 int NETDEV_TX_OK ;
 int PCH_GBE_DESC_UNUSED (struct pch_gbe_tx_ring*) ;
 struct pch_gbe_adapter* netdev_priv (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int pch_gbe_tx_queue (struct pch_gbe_adapter*,struct pch_gbe_tx_ring*,struct sk_buff*) ;
 int pr_debug (char*,int ,int ) ;
 int spin_trylock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pch_gbe_xmit_frame(struct sk_buff *skb, struct net_device *netdev)
{
 struct pch_gbe_adapter *adapter = netdev_priv(netdev);
 struct pch_gbe_tx_ring *tx_ring = adapter->tx_ring;
 unsigned long flags;

 if (!spin_trylock_irqsave(&tx_ring->tx_lock, flags)) {

  return NETDEV_TX_LOCKED;
 }
 if (unlikely(!PCH_GBE_DESC_UNUSED(tx_ring))) {
  netif_stop_queue(netdev);
  spin_unlock_irqrestore(&tx_ring->tx_lock, flags);
  pr_debug("Return : BUSY  next_to use : 0x%08x  next_to clean : 0x%08x\n",
    tx_ring->next_to_use, tx_ring->next_to_clean);
  return NETDEV_TX_BUSY;
 }


 pch_gbe_tx_queue(adapter, tx_ring, skb);
 spin_unlock_irqrestore(&tx_ring->tx_lock, flags);
 return NETDEV_TX_OK;
}
