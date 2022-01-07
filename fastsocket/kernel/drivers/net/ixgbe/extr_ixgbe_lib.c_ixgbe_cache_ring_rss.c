
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ixgbe_adapter {int num_rx_queues; int num_tx_queues; TYPE_2__** tx_ring; TYPE_1__** rx_ring; } ;
struct TYPE_4__ {int reg_idx; } ;
struct TYPE_3__ {int reg_idx; } ;



__attribute__((used)) static bool ixgbe_cache_ring_rss(struct ixgbe_adapter *adapter)
{
 int i;

 for (i = 0; i < adapter->num_rx_queues; i++)
  adapter->rx_ring[i]->reg_idx = i;
 for (i = 0; i < adapter->num_tx_queues; i++)
  adapter->tx_ring[i]->reg_idx = i;

 return 1;
}
