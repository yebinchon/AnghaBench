
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbevf_ring {int queue_index; int netdev; } ;
struct ixgbevf_adapter {int restart_queue; } ;


 int EBUSY ;
 int IXGBE_DESC_UNUSED (struct ixgbevf_ring*) ;
 scalar_t__ likely (int) ;
 struct ixgbevf_adapter* netdev_priv (int ) ;
 int netif_start_subqueue (int ,int ) ;
 int netif_stop_subqueue (int ,int ) ;
 int smp_mb () ;

__attribute__((used)) static int __ixgbevf_maybe_stop_tx(struct ixgbevf_ring *tx_ring, int size)
{
 struct ixgbevf_adapter *adapter = netdev_priv(tx_ring->netdev);

 netif_stop_subqueue(tx_ring->netdev, tx_ring->queue_index);



 smp_mb();



 if (likely(IXGBE_DESC_UNUSED(tx_ring) < size))
  return -EBUSY;


 netif_start_subqueue(tx_ring->netdev, tx_ring->queue_index);
 ++adapter->restart_queue;
 return 0;
}
