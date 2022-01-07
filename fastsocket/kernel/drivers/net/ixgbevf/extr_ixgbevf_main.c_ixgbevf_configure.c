
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct ixgbevf_ring {int dummy; } ;
struct ixgbevf_adapter {int num_rx_queues; struct ixgbevf_ring* rx_ring; struct net_device* netdev; } ;


 int IXGBE_DESC_UNUSED (struct ixgbevf_ring*) ;
 int ixgbevf_alloc_rx_buffers (struct ixgbevf_adapter*,struct ixgbevf_ring*,int ) ;
 int ixgbevf_configure_rx (struct ixgbevf_adapter*) ;
 int ixgbevf_configure_tx (struct ixgbevf_adapter*) ;
 int ixgbevf_restore_vlan (struct ixgbevf_adapter*) ;
 int ixgbevf_set_rx_mode (struct net_device*) ;

__attribute__((used)) static void ixgbevf_configure(struct ixgbevf_adapter *adapter)
{
 struct net_device *netdev = adapter->netdev;
 int i;

 ixgbevf_set_rx_mode(netdev);

 ixgbevf_restore_vlan(adapter);

 ixgbevf_configure_tx(adapter);
 ixgbevf_configure_rx(adapter);
 for (i = 0; i < adapter->num_rx_queues; i++) {
  struct ixgbevf_ring *ring = &adapter->rx_ring[i];
  ixgbevf_alloc_rx_buffers(adapter, ring,
      IXGBE_DESC_UNUSED(ring));
 }
}
