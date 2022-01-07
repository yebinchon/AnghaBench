
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tgt_cmd {struct request* rq; } ;
struct scsi_cmnd {int sc_data_direction; int cmnd; struct request* request; int jiffies_at_alloc; } ;
struct request {struct scsi_tgt_cmd* end_io_data; int cmd_flags; int cmd_type; struct scsi_cmnd* special; int cmd; } ;
struct Scsi_Host {int shost_gendev; int uspace_req_q; } ;
typedef int gfp_t ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 int DMA_TO_DEVICE ;
 int GFP_ATOMIC ;
 int REQ_TYPE_BLOCK_PC ;
 int REQ_TYPE_SPECIAL ;
 struct scsi_cmnd* __scsi_get_command (struct Scsi_Host*,int ) ;
 struct request* blk_get_request (int ,int,int ) ;
 int blk_put_request (struct request*) ;
 int get_device (int *) ;
 int jiffies ;
 struct scsi_tgt_cmd* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct scsi_tgt_cmd*) ;
 int put_device (int *) ;
 int scsi_tgt_cmd_cache ;

struct scsi_cmnd *scsi_host_get_command(struct Scsi_Host *shost,
     enum dma_data_direction data_dir,
     gfp_t gfp_mask)
{
 int write = (data_dir == DMA_TO_DEVICE);
 struct request *rq;
 struct scsi_cmnd *cmd;
 struct scsi_tgt_cmd *tcmd;


 if (!get_device(&shost->shost_gendev))
  return ((void*)0);

 tcmd = kmem_cache_alloc(scsi_tgt_cmd_cache, GFP_ATOMIC);
 if (!tcmd)
  goto put_dev;






 rq = blk_get_request(shost->uspace_req_q, !write, gfp_mask);
 if (!rq)
  goto free_tcmd;

 cmd = __scsi_get_command(shost, gfp_mask);
 if (!cmd)
  goto release_rq;

 cmd->sc_data_direction = data_dir;
 cmd->jiffies_at_alloc = jiffies;
 cmd->request = rq;

 cmd->cmnd = rq->cmd;

 rq->special = cmd;
 rq->cmd_type = REQ_TYPE_SPECIAL;
 rq->cmd_flags |= REQ_TYPE_BLOCK_PC;
 rq->end_io_data = tcmd;

 tcmd->rq = rq;

 return cmd;

release_rq:
 blk_put_request(rq);
free_tcmd:
 kmem_cache_free(scsi_tgt_cmd_cache, tcmd);
put_dev:
 put_device(&shost->shost_gendev);
 return ((void*)0);

}
