
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {scalar_t__ cmd_len; int * cmnd; } ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int * cmd; int * buffer; struct scsi_cmnd* special; } ;


 int REQ_DISCARD ;
 int free_page (unsigned long) ;
 int mempool_free (int *,int ) ;
 int sd_cdb_pool ;

__attribute__((used)) static void sd_unprep_fn(struct request_queue *q, struct request *rq)
{
 struct scsi_cmnd *SCpnt = rq->special;

 if (rq->cmd_flags & REQ_DISCARD) {
  free_page((unsigned long)rq->buffer);
  rq->buffer = ((void*)0);
 }
 if (SCpnt->cmnd != rq->cmd) {
  mempool_free(SCpnt->cmnd, sd_cdb_pool);
  SCpnt->cmnd = ((void*)0);
  SCpnt->cmd_len = 0;
 }
}
