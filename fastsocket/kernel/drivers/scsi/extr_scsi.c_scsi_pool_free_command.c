
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_host_cmd_pool {int cmd_slab; int sense_slab; } ;
struct scsi_cmnd {struct scsi_cmnd* sense_buffer; struct scsi_cmnd* prot_sdb; } ;


 int kmem_cache_free (int ,struct scsi_cmnd*) ;
 int scsi_sdb_cache ;

__attribute__((used)) static void
scsi_pool_free_command(struct scsi_host_cmd_pool *pool,
    struct scsi_cmnd *cmd)
{
 if (cmd->prot_sdb)
  kmem_cache_free(scsi_sdb_cache, cmd->prot_sdb);

 kmem_cache_free(pool->sense_slab, cmd->sense_buffer);
 kmem_cache_free(pool->cmd_slab, cmd);
}
