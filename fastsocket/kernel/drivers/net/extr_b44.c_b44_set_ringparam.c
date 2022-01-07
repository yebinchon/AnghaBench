
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ethtool_ringparam {int rx_pending; scalar_t__ rx_mini_pending; scalar_t__ rx_jumbo_pending; int tx_pending; } ;
struct b44 {int rx_pending; int tx_pending; int lock; int dev; } ;


 int B44_FULL_RESET ;
 int B44_RX_RING_SIZE ;
 int B44_TX_RING_SIZE ;
 int EINVAL ;
 int b44_enable_ints (struct b44*) ;
 int b44_halt (struct b44*) ;
 int b44_init_hw (struct b44*,int ) ;
 int b44_init_rings (struct b44*) ;
 struct b44* netdev_priv (struct net_device*) ;
 int netif_wake_queue (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int b44_set_ringparam(struct net_device *dev,
        struct ethtool_ringparam *ering)
{
 struct b44 *bp = netdev_priv(dev);

 if ((ering->rx_pending > B44_RX_RING_SIZE - 1) ||
     (ering->rx_mini_pending != 0) ||
     (ering->rx_jumbo_pending != 0) ||
     (ering->tx_pending > B44_TX_RING_SIZE - 1))
  return -EINVAL;

 spin_lock_irq(&bp->lock);

 bp->rx_pending = ering->rx_pending;
 bp->tx_pending = ering->tx_pending;

 b44_halt(bp);
 b44_init_rings(bp);
 b44_init_hw(bp, B44_FULL_RESET);
 netif_wake_queue(bp->dev);
 spin_unlock_irq(&bp->lock);

 b44_enable_ints(bp);

 return 0;
}
