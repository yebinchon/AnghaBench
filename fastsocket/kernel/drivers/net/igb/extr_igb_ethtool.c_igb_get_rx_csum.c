
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct igb_adapter {TYPE_1__** rx_ring; } ;
struct TYPE_2__ {int flags; } ;


 int IGB_RING_FLAG_RX_CSUM ;
 struct igb_adapter* netdev_priv (struct net_device*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static u32 igb_get_rx_csum(struct net_device *netdev)
{
 struct igb_adapter *adapter = netdev_priv(netdev);
 return test_bit(IGB_RING_FLAG_RX_CSUM, &adapter->rx_ring[0]->flags);
}
