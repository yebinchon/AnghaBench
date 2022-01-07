
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {scalar_t__ next_to_use; scalar_t__ next_to_clean; } ;
struct ixgbe_adapter {int num_tx_queues; int flags2; struct ixgbe_ring** tx_ring; int netdev; } ;


 int IXGBE_FLAG2_RESET_REQUESTED ;
 int drv ;
 int e_warn (int ,char*) ;
 int netif_carrier_ok (int ) ;

__attribute__((used)) static void ixgbe_watchdog_flush_tx(struct ixgbe_adapter *adapter)
{
 int i;
 int some_tx_pending = 0;

 if (!netif_carrier_ok(adapter->netdev)) {
  for (i = 0; i < adapter->num_tx_queues; i++) {
   struct ixgbe_ring *tx_ring = adapter->tx_ring[i];
   if (tx_ring->next_to_use != tx_ring->next_to_clean) {
    some_tx_pending = 1;
    break;
   }
  }

  if (some_tx_pending) {





   e_warn(drv, "initiating reset to clear Tx work after link loss\n");
   adapter->flags2 |= IXGBE_FLAG2_RESET_REQUESTED;
  }
 }
}
