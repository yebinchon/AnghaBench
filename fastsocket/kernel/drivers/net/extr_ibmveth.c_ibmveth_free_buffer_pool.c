
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct ibmveth_buff_pool {int size; struct sk_buff** skbuff; struct sk_buff** dma_addr; int buff_size; struct sk_buff** free_map; } ;
struct ibmveth_adapter {TYPE_1__* vdev; } ;
struct TYPE_2__ {int dev; } ;


 int DMA_FROM_DEVICE ;
 int dev_kfree_skb_any (struct sk_buff*) ;
 int dma_unmap_single (int *,struct sk_buff*,int ,int ) ;
 int kfree (struct sk_buff**) ;

__attribute__((used)) static void ibmveth_free_buffer_pool(struct ibmveth_adapter *adapter,
         struct ibmveth_buff_pool *pool)
{
 int i;

 kfree(pool->free_map);
 pool->free_map = ((void*)0);

 if (pool->skbuff && pool->dma_addr) {
  for (i = 0; i < pool->size; ++i) {
   struct sk_buff *skb = pool->skbuff[i];
   if (skb) {
    dma_unmap_single(&adapter->vdev->dev,
       pool->dma_addr[i],
       pool->buff_size,
       DMA_FROM_DEVICE);
    dev_kfree_skb_any(skb);
    pool->skbuff[i] = ((void*)0);
   }
  }
 }

 if (pool->dma_addr) {
  kfree(pool->dma_addr);
  pool->dma_addr = ((void*)0);
 }

 if (pool->skbuff) {
  kfree(pool->skbuff);
  pool->skbuff = ((void*)0);
 }
}
