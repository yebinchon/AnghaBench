
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rq_pool; } ;
struct request_queue {TYPE_1__ rq; } ;
struct request {unsigned int cmd_flags; } ;
typedef int gfp_t ;


 unsigned int REQ_ALLOCED ;
 unsigned int REQ_ELVPRIV ;
 int blk_rq_init (struct request_queue*,struct request*) ;
 int elv_set_request (struct request_queue*,struct request*,int ) ;
 struct request* mempool_alloc (int ,int ) ;
 int mempool_free (struct request*,int ) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static struct request *
blk_alloc_request(struct request_queue *q, unsigned int flags, gfp_t gfp_mask)
{
 struct request *rq = mempool_alloc(q->rq.rq_pool, gfp_mask);

 if (!rq)
  return ((void*)0);

 blk_rq_init(q, rq);

 rq->cmd_flags = flags | REQ_ALLOCED;

 if ((flags & REQ_ELVPRIV) &&
     unlikely(elv_set_request(q, rq, gfp_mask))) {
  mempool_free(rq, q->rq.rq_pool);
  return ((void*)0);
 }

 return rq;
}
