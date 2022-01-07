
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int list; } ;
struct Scsi_Host {int free_list; int * cmd_pool; int free_list_lock; scalar_t__ unchecked_isa_dma; } ;
typedef int gfp_t ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int list_add (int *,int *) ;
 int * scsi_get_host_cmd_pool (int const) ;
 struct scsi_cmnd* scsi_host_alloc_command (struct Scsi_Host*,int const) ;
 int scsi_put_host_cmd_pool (int const) ;
 int spin_lock_init (int *) ;

int scsi_setup_command_freelist(struct Scsi_Host *shost)
{
 struct scsi_cmnd *cmd;
 const gfp_t gfp_mask = shost->unchecked_isa_dma ? GFP_DMA : GFP_KERNEL;

 spin_lock_init(&shost->free_list_lock);
 INIT_LIST_HEAD(&shost->free_list);

 shost->cmd_pool = scsi_get_host_cmd_pool(gfp_mask);

 if (!shost->cmd_pool)
  return -ENOMEM;




 cmd = scsi_host_alloc_command(shost, gfp_mask);
 if (!cmd) {
  scsi_put_host_cmd_pool(gfp_mask);
  shost->cmd_pool = ((void*)0);
  return -ENOMEM;
 }
 list_add(&cmd->list, &shost->free_list);
 return 0;
}
