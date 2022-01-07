
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {int gfp_mask; int cmd_slab; int sense_slab; } ;
struct scsi_cmnd {int sense_buffer; } ;
typedef int gfp_t ;


 int kmem_cache_alloc (int ,int) ;
 int kmem_cache_free (int ,struct scsi_cmnd*) ;
 struct scsi_cmnd* kmem_cache_zalloc (int ,int) ;

__attribute__((used)) static struct scsi_cmnd *
scsi_pool_alloc_command(struct scsi_host_cmd_pool *pool, gfp_t gfp_mask)
{
 struct scsi_cmnd *cmd;

 cmd = kmem_cache_zalloc(pool->cmd_slab, gfp_mask | pool->gfp_mask);
 if (!cmd)
  return ((void*)0);

 cmd->sense_buffer = kmem_cache_alloc(pool->sense_slab,
          gfp_mask | pool->gfp_mask);
 if (!cmd->sense_buffer) {
  kmem_cache_free(pool->cmd_slab, cmd);
  return ((void*)0);
 }

 return cmd;
}
