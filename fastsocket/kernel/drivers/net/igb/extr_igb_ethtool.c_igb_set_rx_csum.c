
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct net_device {int dummy; } ;
struct igb_adapter {int num_rx_queues; TYPE_1__** rx_ring; } ;
struct TYPE_2__ {int flags; } ;


 int IGB_RING_FLAG_RX_CSUM ;
 int clear_bit (int ,int *) ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static int igb_set_rx_csum(struct net_device *netdev, u32 data)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  if (data)
   set_bit(IGB_RING_FLAG_RX_CSUM,
    &adapter->rx_ring[i]->flags);
  else
   clear_bit(IGB_RING_FLAG_RX_CSUM,
      &adapter->rx_ring[i]->flags);
 }

 return 0;
}
