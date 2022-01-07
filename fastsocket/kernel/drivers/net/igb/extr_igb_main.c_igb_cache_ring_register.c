
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_5__ {int type; } ;
struct TYPE_6__ {TYPE_1__ mac; } ;
struct igb_adapter {int rss_queues; int num_rx_queues; int num_tx_queues; TYPE_4__** tx_ring; TYPE_3__** rx_ring; scalar_t__ vfs_allocated_count; TYPE_2__ hw; } ;
struct TYPE_8__ {int reg_idx; } ;
struct TYPE_7__ {scalar_t__ reg_idx; } ;


 scalar_t__ Q_IDX_82576 (int) ;
__attribute__((used)) static void igb_cache_ring_register(struct igb_adapter *adapter)
{
 int i = 0, j = 0;
 u32 rbase_offset = adapter->vfs_allocated_count;

 switch (adapter->hw.mac.type) {
 case 133:





  if (adapter->vfs_allocated_count) {
   for (; i < adapter->rss_queues; i++)
    adapter->rx_ring[i]->reg_idx = rbase_offset +
              Q_IDX_82576(i);
  }
 case 134:
 case 132:
 case 129:
 case 128:
 case 131:
 case 130:
 default:
  for (; i < adapter->num_rx_queues; i++)
   adapter->rx_ring[i]->reg_idx = rbase_offset + i;
  for (; j < adapter->num_tx_queues; j++)
   adapter->tx_ring[j]->reg_idx = rbase_offset + j;
  break;
 }
}
