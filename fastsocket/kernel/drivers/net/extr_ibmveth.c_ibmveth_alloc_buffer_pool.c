
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ibmveth_buff_pool {int* free_map; int size; int* dma_addr; int* skbuff; scalar_t__ consumer_index; scalar_t__ producer_index; int available; } ;
typedef int dma_addr_t ;


 int GFP_KERNEL ;
 int atomic_set (int *,int ) ;
 int kfree (int*) ;
 void* kmalloc (int,int ) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int ibmveth_alloc_buffer_pool(struct ibmveth_buff_pool *pool)
{
 int i;

 pool->free_map = kmalloc(sizeof(u16) * pool->size, GFP_KERNEL);

 if (!pool->free_map)
  return -1;

 pool->dma_addr = kmalloc(sizeof(dma_addr_t) * pool->size, GFP_KERNEL);
 if (!pool->dma_addr) {
  kfree(pool->free_map);
  pool->free_map = ((void*)0);
  return -1;
 }

 pool->skbuff = kmalloc(sizeof(void*) * pool->size, GFP_KERNEL);

 if (!pool->skbuff) {
  kfree(pool->dma_addr);
  pool->dma_addr = ((void*)0);

  kfree(pool->free_map);
  pool->free_map = ((void*)0);
  return -1;
 }

 memset(pool->skbuff, 0, sizeof(void*) * pool->size);
 memset(pool->dma_addr, 0, sizeof(dma_addr_t) * pool->size);

 for (i = 0; i < pool->size; ++i)
  pool->free_map[i] = i;

 atomic_set(&pool->available, 0);
 pool->producer_index = 0;
 pool->consumer_index = 0;

 return 0;
}
