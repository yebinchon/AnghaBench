
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct igbvf_adapter {int requested_itr; TYPE_2__* rx_ring; int total_rx_bytes; int total_rx_packets; TYPE_1__* tx_ring; int total_tx_bytes; int total_tx_packets; } ;
struct TYPE_4__ {scalar_t__ itr_range; scalar_t__ itr_val; int set_itr; } ;
struct TYPE_3__ {scalar_t__ itr_range; scalar_t__ itr_val; int set_itr; } ;


 scalar_t__ igbvf_range_to_itr (scalar_t__) ;
 void* igbvf_update_itr (struct igbvf_adapter*,scalar_t__,int ,int ) ;
 void* low_latency ;
 scalar_t__ lowest_latency ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static void igbvf_set_itr(struct igbvf_adapter *adapter)
{
 u32 new_itr;

 adapter->tx_ring->itr_range =
   igbvf_update_itr(adapter,
      adapter->tx_ring->itr_val,
      adapter->total_tx_packets,
      adapter->total_tx_bytes);


 if (adapter->requested_itr == 3 &&
     adapter->tx_ring->itr_range == lowest_latency)
  adapter->tx_ring->itr_range = low_latency;

 new_itr = igbvf_range_to_itr(adapter->tx_ring->itr_range);


 if (new_itr != adapter->tx_ring->itr_val) {
  u32 current_itr = adapter->tx_ring->itr_val;





  new_itr = new_itr > current_itr ?
        min(current_itr + (new_itr >> 2), new_itr) :
        new_itr;
  adapter->tx_ring->itr_val = new_itr;

  adapter->tx_ring->set_itr = 1;
 }

 adapter->rx_ring->itr_range =
   igbvf_update_itr(adapter, adapter->rx_ring->itr_val,
      adapter->total_rx_packets,
      adapter->total_rx_bytes);
 if (adapter->requested_itr == 3 &&
     adapter->rx_ring->itr_range == lowest_latency)
  adapter->rx_ring->itr_range = low_latency;

 new_itr = igbvf_range_to_itr(adapter->rx_ring->itr_range);

 if (new_itr != adapter->rx_ring->itr_val) {
  u32 current_itr = adapter->rx_ring->itr_val;
  new_itr = new_itr > current_itr ?
        min(current_itr + (new_itr >> 2), new_itr) :
        new_itr;
  adapter->rx_ring->itr_val = new_itr;

  adapter->rx_ring->set_itr = 1;
 }
}
