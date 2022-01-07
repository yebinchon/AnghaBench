
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tgt_cmd {int dummy; } ;
struct scsi_cmnd {struct request* request; } ;
struct request_queue {int queue_lock; } ;
struct request {struct scsi_tgt_cmd* end_io_data; } ;
struct Scsi_Host {int shost_gendev; struct request_queue* uspace_req_q; } ;


 int __blk_put_request (struct request_queue*,struct request*) ;
 int __scsi_put_command (struct Scsi_Host*,struct scsi_cmnd*,int *) ;
 int kmem_cache_free (int ,struct scsi_tgt_cmd*) ;
 int scsi_tgt_cmd_cache ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

void scsi_host_put_command(struct Scsi_Host *shost, struct scsi_cmnd *cmd)
{
 struct request_queue *q = shost->uspace_req_q;
 struct request *rq = cmd->request;
 struct scsi_tgt_cmd *tcmd = rq->end_io_data;
 unsigned long flags;

 kmem_cache_free(scsi_tgt_cmd_cache, tcmd);

 spin_lock_irqsave(q->queue_lock, flags);
 __blk_put_request(q, rq);
 spin_unlock_irqrestore(q->queue_lock, flags);

 __scsi_put_command(shost, cmd, &shost->shost_gendev);
}
