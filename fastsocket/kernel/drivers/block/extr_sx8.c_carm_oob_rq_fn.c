
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct carm_host* queuedata; } ;
struct request {struct carm_request* special; } ;
struct carm_request {scalar_t__ n_elem; struct request* rq; } ;
struct carm_host {int dummy; } ;


 int DPRINTK (char*) ;
 int assert (int) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 int blk_requeue_request (struct request_queue*,struct request*) ;
 int carm_push_q (struct carm_host*,struct request_queue*) ;
 int carm_send_msg (struct carm_host*,struct carm_request*) ;

__attribute__((used)) static void carm_oob_rq_fn(struct request_queue *q)
{
 struct carm_host *host = q->queuedata;
 struct carm_request *crq;
 struct request *rq;
 int rc;

 while (1) {
  DPRINTK("get req\n");
  rq = blk_fetch_request(q);
  if (!rq)
   break;

  crq = rq->special;
  assert(crq != ((void*)0));
  assert(crq->rq == rq);

  crq->n_elem = 0;

  DPRINTK("send req\n");
  rc = carm_send_msg(host, crq);
  if (rc) {
   blk_requeue_request(q, rq);
   carm_push_q(host, q);
   return;
  }
 }
}
