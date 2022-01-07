
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tgt_queuedata {int cmd_hash_lock; int * cmd_hash; struct Scsi_Host* shost; } ;
struct request_queue {int nr_requests; struct scsi_tgt_queuedata* queuedata; } ;
struct Scsi_Host {struct request_queue* uspace_req_q; int can_queue; } ;


 int ARRAY_SIZE (int *) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct request_queue* __scsi_alloc_queue (struct Scsi_Host*,int *) ;
 int blk_cleanup_queue (struct request_queue*) ;
 int blk_queue_dma_alignment (struct request_queue*,int ) ;
 struct scsi_tgt_queuedata* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

int scsi_tgt_alloc_queue(struct Scsi_Host *shost)
{
 struct scsi_tgt_queuedata *queuedata;
 struct request_queue *q;
 int err, i;





 q = __scsi_alloc_queue(shost, ((void*)0));
 if (!q)
  return -ENOMEM;

 queuedata = kzalloc(sizeof(*queuedata), GFP_KERNEL);
 if (!queuedata) {
  err = -ENOMEM;
  goto cleanup_queue;
 }
 queuedata->shost = shost;
 q->queuedata = queuedata;






 q->nr_requests = shost->can_queue;





 blk_queue_dma_alignment(q, 0);
 shost->uspace_req_q = q;

 for (i = 0; i < ARRAY_SIZE(queuedata->cmd_hash); i++)
  INIT_LIST_HEAD(&queuedata->cmd_hash[i]);
 spin_lock_init(&queuedata->cmd_hash_lock);

 return 0;

cleanup_queue:
 blk_cleanup_queue(q);
 return err;
}
