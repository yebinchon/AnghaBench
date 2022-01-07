
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipath_user_sdma_queue {int header_cache; int pkt_slab; } ;


 int dma_pool_destroy (int ) ;
 int kfree (struct ipath_user_sdma_queue*) ;
 int kmem_cache_destroy (int ) ;

void ipath_user_sdma_queue_destroy(struct ipath_user_sdma_queue *pq)
{
 if (!pq)
  return;

 kmem_cache_destroy(pq->pkt_slab);
 dma_pool_destroy(pq->header_cache);
 kfree(pq);
}
