
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct sk_buff {int dummy; } ;
struct TYPE_5__ {size_t index; TYPE_1__* queue_addr; } ;
struct ibmveth_adapter {TYPE_3__* rx_buff_pool; TYPE_2__ rx_queue; } ;
struct TYPE_6__ {unsigned int size; struct sk_buff** skbuff; } ;
struct TYPE_4__ {int correlator; } ;


 int BUG_ON (int) ;
 unsigned int IBMVETH_NUM_BUFF_POOLS ;

__attribute__((used)) static inline struct sk_buff *ibmveth_rxq_get_buffer(struct ibmveth_adapter *adapter)
{
 u64 correlator = adapter->rx_queue.queue_addr[adapter->rx_queue.index].correlator;
 unsigned int pool = correlator >> 32;
 unsigned int index = correlator & 0xffffffffUL;

 BUG_ON(pool >= IBMVETH_NUM_BUFF_POOLS);
 BUG_ON(index >= adapter->rx_buff_pool[pool].size);

 return adapter->rx_buff_pool[pool].skbuff[index];
}
