
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t index; size_t num_slots; int toggle; TYPE_1__* queue_addr; } ;
struct ibmveth_adapter {TYPE_2__ rx_queue; } ;
struct TYPE_3__ {int correlator; } ;


 int ibmveth_remove_buffer_from_pool (struct ibmveth_adapter*,int ) ;

__attribute__((used)) static void ibmveth_rxq_harvest_buffer(struct ibmveth_adapter *adapter)
{
 ibmveth_remove_buffer_from_pool(adapter, adapter->rx_queue.queue_addr[adapter->rx_queue.index].correlator);

 if (++adapter->rx_queue.index == adapter->rx_queue.num_slots) {
  adapter->rx_queue.index = 0;
  adapter->rx_queue.toggle = !adapter->rx_queue.toggle;
 }
}
