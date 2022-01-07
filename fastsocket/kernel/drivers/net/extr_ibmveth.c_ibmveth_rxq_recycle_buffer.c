
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flags_len; int address; } ;
union ibmveth_buf_desc {int desc; TYPE_1__ fields; } ;
typedef int u64 ;
typedef size_t u32 ;
struct TYPE_9__ {size_t index; size_t num_slots; int toggle; TYPE_3__* queue_addr; } ;
struct ibmveth_adapter {TYPE_4__ rx_queue; int netdev; TYPE_2__* vdev; TYPE_5__* rx_buff_pool; } ;
struct TYPE_10__ {unsigned int size; int buff_size; int * dma_addr; int active; } ;
struct TYPE_8__ {int correlator; } ;
struct TYPE_7__ {int unit_address; } ;


 int BUG_ON (int) ;
 unsigned long H_SUCCESS ;
 int IBMVETH_BUF_VALID ;
 unsigned int IBMVETH_NUM_BUFF_POOLS ;
 unsigned long h_add_logical_lan_buffer (int ,int ) ;
 int ibmveth_free_buffer_pool (struct ibmveth_adapter*,TYPE_5__*) ;
 int ibmveth_remove_buffer_from_pool (struct ibmveth_adapter*,int) ;
 int ibmveth_rxq_harvest_buffer (struct ibmveth_adapter*) ;
 int netdev_dbg (int ,char*,unsigned long) ;

__attribute__((used)) static int ibmveth_rxq_recycle_buffer(struct ibmveth_adapter *adapter)
{
 u32 q_index = adapter->rx_queue.index;
 u64 correlator = adapter->rx_queue.queue_addr[q_index].correlator;
 unsigned int pool = correlator >> 32;
 unsigned int index = correlator & 0xffffffffUL;
 union ibmveth_buf_desc desc;
 unsigned long lpar_rc;
 int ret = 1;

 BUG_ON(pool >= IBMVETH_NUM_BUFF_POOLS);
 BUG_ON(index >= adapter->rx_buff_pool[pool].size);

 if (!adapter->rx_buff_pool[pool].active) {
  ibmveth_rxq_harvest_buffer(adapter);
  ibmveth_free_buffer_pool(adapter, &adapter->rx_buff_pool[pool]);
  goto out;
 }

 desc.fields.flags_len = IBMVETH_BUF_VALID |
  adapter->rx_buff_pool[pool].buff_size;
 desc.fields.address = adapter->rx_buff_pool[pool].dma_addr[index];

 lpar_rc = h_add_logical_lan_buffer(adapter->vdev->unit_address, desc.desc);

 if (lpar_rc != H_SUCCESS) {
  netdev_dbg(adapter->netdev, "h_add_logical_lan_buffer failed "
      "during recycle rc=%ld", lpar_rc);
  ibmveth_remove_buffer_from_pool(adapter, adapter->rx_queue.queue_addr[adapter->rx_queue.index].correlator);
  ret = 0;
 }

 if (++adapter->rx_queue.index == adapter->rx_queue.num_slots) {
  adapter->rx_queue.index = 0;
  adapter->rx_queue.toggle = !adapter->rx_queue.toggle;
 }

out:
 return ret;
}
