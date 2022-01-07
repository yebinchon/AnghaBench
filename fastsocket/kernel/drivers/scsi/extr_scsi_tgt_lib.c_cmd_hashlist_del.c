
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_tgt_queuedata {int cmd_hash_lock; } ;
struct scsi_tgt_cmd {int hash_list; } ;
struct scsi_cmnd {TYPE_1__* request; } ;
struct request_queue {struct scsi_tgt_queuedata* queuedata; } ;
struct TYPE_2__ {struct scsi_tgt_cmd* end_io_data; struct request_queue* q; } ;


 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void cmd_hashlist_del(struct scsi_cmnd *cmd)
{
 struct request_queue *q = cmd->request->q;
 struct scsi_tgt_queuedata *qdata = q->queuedata;
 unsigned long flags;
 struct scsi_tgt_cmd *tcmd = cmd->request->end_io_data;

 spin_lock_irqsave(&qdata->cmd_hash_lock, flags);
 list_del(&tcmd->hash_list);
 spin_unlock_irqrestore(&qdata->cmd_hash_lock, flags);
}
