
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_ring {int dummy; } ;
struct ixgbe_adapter {int num_rx_queues; int flags2; struct ixgbe_ring** rx_ring; } ;


 int IXGBE_FLAG2_RSC_ENABLED ;
 int ixgbe_clear_rscctl (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int ixgbe_configure_rscctl (struct ixgbe_adapter*,struct ixgbe_ring*) ;
 int set_ring_rsc_enabled (struct ixgbe_ring*) ;

__attribute__((used)) static void ixgbe_set_rsc(struct ixgbe_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbe_ring *ring = adapter->rx_ring[i];
  if (adapter->flags2 & IXGBE_FLAG2_RSC_ENABLED) {
   set_ring_rsc_enabled(ring);
   ixgbe_configure_rscctl(adapter, ring);
  } else {
   ixgbe_clear_rscctl(adapter, ring);
  }
 }
}
