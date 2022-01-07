
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {unsigned int flush_flags; } ;


 unsigned int REQ_FLUSH ;
 unsigned int REQ_FUA ;
 scalar_t__ WARN_ON_ONCE (int) ;

void blk_queue_flush(struct request_queue *q, unsigned int flush)
{
 WARN_ON_ONCE(flush & ~(REQ_FLUSH | REQ_FUA));

 if (WARN_ON_ONCE(!(flush & REQ_FLUSH) && (flush & REQ_FUA)))
  flush &= ~REQ_FUA;

 q->flush_flags = flush & (REQ_FLUSH | REQ_FUA);
}
