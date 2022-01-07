
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {scalar_t__ users; int sense_slab; int cmd_slab; } ;
typedef int gfp_t ;


 int BUG_ON (int) ;
 int __GFP_DMA ;
 int host_cmd_pool_mutex ;
 int kmem_cache_destroy (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct scsi_host_cmd_pool scsi_cmd_dma_pool ;
 struct scsi_host_cmd_pool scsi_cmd_pool ;

__attribute__((used)) static void scsi_put_host_cmd_pool(gfp_t gfp_mask)
{
 struct scsi_host_cmd_pool *pool;

 mutex_lock(&host_cmd_pool_mutex);
 pool = (gfp_mask & __GFP_DMA) ? &scsi_cmd_dma_pool :
  &scsi_cmd_pool;





 BUG_ON(pool->users == 0);

 if (!--pool->users) {
  kmem_cache_destroy(pool->cmd_slab);
  kmem_cache_destroy(pool->sense_slab);
 }
 mutex_unlock(&host_cmd_pool_mutex);
}
