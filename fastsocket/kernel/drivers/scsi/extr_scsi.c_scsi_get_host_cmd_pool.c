
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {int users; void* cmd_slab; void* sense_slab; int slab_flags; int sense_name; int cmd_name; } ;
struct scsi_cmnd {int dummy; } ;
typedef int gfp_t ;


 int SCSI_SENSE_BUFFERSIZE ;
 int __GFP_DMA ;
 int host_cmd_pool_mutex ;
 void* kmem_cache_create (int ,int,int ,int ,int *) ;
 int kmem_cache_destroy (void*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct scsi_host_cmd_pool scsi_cmd_dma_pool ;
 struct scsi_host_cmd_pool scsi_cmd_pool ;

__attribute__((used)) static struct scsi_host_cmd_pool *scsi_get_host_cmd_pool(gfp_t gfp_mask)
{
 struct scsi_host_cmd_pool *retval = ((void*)0), *pool;




 mutex_lock(&host_cmd_pool_mutex);
 pool = (gfp_mask & __GFP_DMA) ? &scsi_cmd_dma_pool :
  &scsi_cmd_pool;
 if (!pool->users) {
  pool->cmd_slab = kmem_cache_create(pool->cmd_name,
         sizeof(struct scsi_cmnd), 0,
         pool->slab_flags, ((void*)0));
  if (!pool->cmd_slab)
   goto fail;

  pool->sense_slab = kmem_cache_create(pool->sense_name,
           SCSI_SENSE_BUFFERSIZE, 0,
           pool->slab_flags, ((void*)0));
  if (!pool->sense_slab) {
   kmem_cache_destroy(pool->cmd_slab);
   goto fail;
  }
 }

 pool->users++;
 retval = pool;
 fail:
 mutex_unlock(&host_cmd_pool_mutex);
 return retval;
}
