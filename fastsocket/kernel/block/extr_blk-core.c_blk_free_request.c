
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rq_pool; } ;
struct request_queue {TYPE_1__ rq; } ;
struct request {int cmd_flags; } ;


 int REQ_ELVPRIV ;
 int elv_put_request (struct request_queue*,struct request*) ;
 int mempool_free (struct request*,int ) ;

__attribute__((used)) static inline void blk_free_request(struct request_queue *q, struct request *rq)
{
 if (rq->cmd_flags & REQ_ELVPRIV)
  elv_put_request(q, rq);
 mempool_free(rq, q->rq.rq_pool);
}
