
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u64 ;
struct scsi_tgt_queuedata {int cmd_hash_lock; struct list_head* cmd_hash; } ;
struct scsi_tgt_cmd {int hash_list; int work; int * bio; void* tag; void* itn_id; } ;
struct request {TYPE_1__* q; } ;
struct list_head {int dummy; } ;
struct TYPE_2__ {struct scsi_tgt_queuedata* queuedata; } ;


 int INIT_WORK (int *,int ) ;
 size_t cmd_hashfn (void*) ;
 int list_add (int *,struct list_head*) ;
 int scsi_tgt_cmd_destroy ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void init_scsi_tgt_cmd(struct request *rq, struct scsi_tgt_cmd *tcmd,
         u64 itn_id, u64 tag)
{
 struct scsi_tgt_queuedata *qdata = rq->q->queuedata;
 unsigned long flags;
 struct list_head *head;

 tcmd->itn_id = itn_id;
 tcmd->tag = tag;
 tcmd->bio = ((void*)0);
 INIT_WORK(&tcmd->work, scsi_tgt_cmd_destroy);
 spin_lock_irqsave(&qdata->cmd_hash_lock, flags);
 head = &qdata->cmd_hash[cmd_hashfn(tag)];
 list_add(&tcmd->hash_list, head);
 spin_unlock_irqrestore(&qdata->cmd_hash_lock, flags);
}
