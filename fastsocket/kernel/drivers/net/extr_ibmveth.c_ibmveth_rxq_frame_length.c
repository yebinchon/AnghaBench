
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {size_t index; TYPE_1__* queue_addr; } ;
struct ibmveth_adapter {TYPE_2__ rx_queue; } ;
struct TYPE_3__ {int length; } ;



__attribute__((used)) static inline int ibmveth_rxq_frame_length(struct ibmveth_adapter *adapter)
{
 return adapter->rx_queue.queue_addr[adapter->rx_queue.index].length;
}
