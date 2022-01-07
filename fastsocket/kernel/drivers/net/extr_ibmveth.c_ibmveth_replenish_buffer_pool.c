
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags_len; void* address; } ;
union ibmveth_buf_desc {int desc; TYPE_1__ fields; } ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct sk_buff {scalar_t__ data; } ;
struct ibmveth_buff_pool {scalar_t__ size; int buff_size; unsigned int consumer_index; unsigned int* free_map; int available; void** dma_addr; struct sk_buff** skbuff; scalar_t__ index; } ;
struct ibmveth_adapter {int replenish_add_buff_failure; TYPE_2__* vdev; int replenish_add_buff_success; TYPE_3__* netdev; int replenish_no_mem; } ;
typedef void* dma_addr_t ;
struct TYPE_7__ {scalar_t__ mtu; } ;
struct TYPE_6__ {int dev; int unit_address; } ;


 int BUG_ON (int) ;
 int DMA_FROM_DEVICE ;
 unsigned long H_SUCCESS ;
 scalar_t__ IBMVETH_BUFF_OH ;
 int IBMVETH_BUF_VALID ;
 unsigned int IBM_VETH_INVALID_MAP ;
 int atomic_add (scalar_t__,int *) ;
 scalar_t__ atomic_read (int *) ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 void* dma_map_single (int *,scalar_t__,int,int ) ;
 scalar_t__ dma_mapping_error (int *,void*) ;
 int dma_unmap_single (int *,void*,int,int ) ;
 unsigned long h_add_logical_lan_buffer (int ,int ) ;
 int ibmveth_flush_buffer (scalar_t__,unsigned int) ;
 int mb () ;
 unsigned int min (int,scalar_t__) ;
 struct sk_buff* netdev_alloc_skb (TYPE_3__*,int) ;
 int netdev_dbg (TYPE_3__*,char*) ;
 scalar_t__ rx_flush ;

__attribute__((used)) static void ibmveth_replenish_buffer_pool(struct ibmveth_adapter *adapter,
       struct ibmveth_buff_pool *pool)
{
 u32 i;
 u32 count = pool->size - atomic_read(&pool->available);
 u32 buffers_added = 0;
 struct sk_buff *skb;
 unsigned int free_index, index;
 u64 correlator;
 unsigned long lpar_rc;
 dma_addr_t dma_addr;

 mb();

 for (i = 0; i < count; ++i) {
  union ibmveth_buf_desc desc;

  skb = netdev_alloc_skb(adapter->netdev, pool->buff_size);

  if (!skb) {
   netdev_dbg(adapter->netdev,
       "replenish: unable to allocate skb\n");
   adapter->replenish_no_mem++;
   break;
  }

  free_index = pool->consumer_index;
  pool->consumer_index++;
  if (pool->consumer_index >= pool->size)
   pool->consumer_index = 0;
  index = pool->free_map[free_index];

  BUG_ON(index == IBM_VETH_INVALID_MAP);
  BUG_ON(pool->skbuff[index] != ((void*)0));

  dma_addr = dma_map_single(&adapter->vdev->dev, skb->data,
    pool->buff_size, DMA_FROM_DEVICE);

  if (dma_mapping_error(&adapter->vdev->dev, dma_addr))
   goto failure;

  pool->free_map[free_index] = IBM_VETH_INVALID_MAP;
  pool->dma_addr[index] = dma_addr;
  pool->skbuff[index] = skb;

  correlator = ((u64)pool->index << 32) | index;
  *(u64 *)skb->data = correlator;

  desc.fields.flags_len = IBMVETH_BUF_VALID | pool->buff_size;
  desc.fields.address = dma_addr;

  if (rx_flush) {
   unsigned int len = min(pool->buff_size,
      adapter->netdev->mtu +
      IBMVETH_BUFF_OH);
   ibmveth_flush_buffer(skb->data, len);
  }
  lpar_rc = h_add_logical_lan_buffer(adapter->vdev->unit_address,
         desc.desc);

  if (lpar_rc != H_SUCCESS) {
   goto failure;
  } else {
   buffers_added++;
   adapter->replenish_add_buff_success++;
  }
 }

 mb();
 atomic_add(buffers_added, &(pool->available));
 return;

failure:
 pool->free_map[free_index] = index;
 pool->skbuff[index] = ((void*)0);
 if (pool->consumer_index == 0)
  pool->consumer_index = pool->size - 1;
 else
  pool->consumer_index--;
 if (!dma_mapping_error(&adapter->vdev->dev, dma_addr))
  dma_unmap_single(&adapter->vdev->dev,
                   pool->dma_addr[index], pool->buff_size,
                   DMA_FROM_DEVICE);
 dev_kfree_skb_any(skb);
 adapter->replenish_add_buff_failure++;

 mb();
 atomic_add(buffers_added, &(pool->available));
}
