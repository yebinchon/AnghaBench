
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {unsigned int flush_flags; int queue_head; } ;
struct TYPE_2__ {int list; } ;
struct request {int end_io; scalar_t__ bio; scalar_t__ biotail; unsigned int cmd_flags; TYPE_1__ flush; int queuelist; struct request_queue* q; } ;


 int BUG_ON (int) ;
 int INIT_LIST_HEAD (int *) ;
 unsigned int REQ_FLUSH ;
 unsigned int REQ_FLUSH_SEQ ;
 unsigned int REQ_FSEQ_ACTIONS ;
 unsigned int REQ_FSEQ_DATA ;
 unsigned int REQ_FSEQ_POSTFLUSH ;
 unsigned int REQ_FSEQ_PREFLUSH ;
 unsigned int REQ_FUA ;
 int blk_flush_complete_seq (struct request*,unsigned int,int ) ;
 unsigned int blk_flush_policy (unsigned int,struct request*) ;
 int flush_data_end_io ;
 int list_add_tail (int *,int *) ;
 int memset (TYPE_1__*,int ,int) ;

void blk_insert_flush(struct request *rq)
{
 struct request_queue *q = rq->q;
 unsigned int fflags = q->flush_flags;
 unsigned int policy = blk_flush_policy(fflags, rq);

 BUG_ON(rq->end_io);
 BUG_ON(!rq->bio || rq->bio != rq->biotail);





 rq->cmd_flags &= ~REQ_FLUSH;
 if (!(fflags & REQ_FUA))
  rq->cmd_flags &= ~REQ_FUA;






 if ((policy & REQ_FSEQ_DATA) &&
     !(policy & (REQ_FSEQ_PREFLUSH | REQ_FSEQ_POSTFLUSH))) {
  list_add_tail(&rq->queuelist, &q->queue_head);
  return;
 }





 memset(&rq->flush, 0, sizeof(rq->flush));
 INIT_LIST_HEAD(&rq->flush.list);
 rq->cmd_flags |= REQ_FLUSH_SEQ;
 rq->end_io = flush_data_end_io;

 blk_flush_complete_seq(rq, REQ_FSEQ_ACTIONS & ~policy, 0);
}
