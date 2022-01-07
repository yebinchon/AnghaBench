
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int prot_sdb; } ;
struct Scsi_Host {int cmd_pool; } ;
typedef int gfp_t ;


 scalar_t__ SHOST_DIX_TYPE0_PROTECTION ;
 int kmem_cache_zalloc (int ,int ) ;
 scalar_t__ scsi_host_get_prot (struct Scsi_Host*) ;
 struct scsi_cmnd* scsi_pool_alloc_command (int ,int ) ;
 int scsi_pool_free_command (int ,struct scsi_cmnd*) ;
 int scsi_sdb_cache ;

__attribute__((used)) static struct scsi_cmnd *
scsi_host_alloc_command(struct Scsi_Host *shost, gfp_t gfp_mask)
{
 struct scsi_cmnd *cmd;

 cmd = scsi_pool_alloc_command(shost->cmd_pool, gfp_mask);
 if (!cmd)
  return ((void*)0);

 if (scsi_host_get_prot(shost) >= SHOST_DIX_TYPE0_PROTECTION) {
  cmd->prot_sdb = kmem_cache_zalloc(scsi_sdb_cache, gfp_mask);

  if (!cmd->prot_sdb) {
   scsi_pool_free_command(shost->cmd_pool, cmd);
   return ((void*)0);
  }
 }

 return cmd;
}
