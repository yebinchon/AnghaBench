
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t size; } ;
struct vmxnet3_rx_queue {TYPE_3__ comp_ring; TYPE_2__* rx_ring; } ;
struct vmxnet3_adapter {scalar_t__ skb_buf_size; int rx_buf_per_pkt; size_t num_rx_queues; struct vmxnet3_rx_queue* rx_queue; TYPE_1__* netdev; } ;
struct TYPE_5__ {size_t size; } ;
struct TYPE_4__ {scalar_t__ mtu; } ;


 size_t PAGE_SIZE ;
 scalar_t__ VMXNET3_MAX_ETH_HDR_SIZE ;
 scalar_t__ VMXNET3_MAX_SKB_BUF_SIZE ;
 scalar_t__ VMXNET3_MIN_T0_BUF_SIZE ;
 size_t VMXNET3_RING_SIZE_ALIGN ;
 size_t VMXNET3_RX_RING_MAX_SIZE ;
 size_t min_t (int ,size_t,size_t) ;
 int u32 ;

__attribute__((used)) static void
vmxnet3_adjust_rx_ring_size(struct vmxnet3_adapter *adapter)
{
 size_t sz, i, ring0_size, ring1_size, comp_size;
 struct vmxnet3_rx_queue *rq = &adapter->rx_queue[0];


 if (adapter->netdev->mtu <= VMXNET3_MAX_SKB_BUF_SIZE -
        VMXNET3_MAX_ETH_HDR_SIZE) {
  adapter->skb_buf_size = adapter->netdev->mtu +
     VMXNET3_MAX_ETH_HDR_SIZE;
  if (adapter->skb_buf_size < VMXNET3_MIN_T0_BUF_SIZE)
   adapter->skb_buf_size = VMXNET3_MIN_T0_BUF_SIZE;

  adapter->rx_buf_per_pkt = 1;
 } else {
  adapter->skb_buf_size = VMXNET3_MAX_SKB_BUF_SIZE;
  sz = adapter->netdev->mtu - VMXNET3_MAX_SKB_BUF_SIZE +
         VMXNET3_MAX_ETH_HDR_SIZE;
  adapter->rx_buf_per_pkt = 1 + (sz + PAGE_SIZE - 1) / PAGE_SIZE;
 }





 sz = adapter->rx_buf_per_pkt * VMXNET3_RING_SIZE_ALIGN;
 ring0_size = adapter->rx_queue[0].rx_ring[0].size;
 ring0_size = (ring0_size + sz - 1) / sz * sz;
 ring0_size = min_t(u32, ring0_size, VMXNET3_RX_RING_MAX_SIZE /
      sz * sz);
 ring1_size = adapter->rx_queue[0].rx_ring[1].size;
 comp_size = ring0_size + ring1_size;

 for (i = 0; i < adapter->num_rx_queues; i++) {
  rq = &adapter->rx_queue[i];
  rq->rx_ring[0].size = ring0_size;
  rq->rx_ring[1].size = ring1_size;
  rq->comp_ring.size = comp_size;
 }
}
