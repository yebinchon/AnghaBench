
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct carm_host {int dummy; } ;


 int VPRINTK (char*,struct request_queue*) ;
 int blk_start_queue (struct request_queue*) ;
 struct request_queue* carm_pop_q (struct carm_host*) ;

__attribute__((used)) static inline void carm_round_robin(struct carm_host *host)
{
 struct request_queue *q = carm_pop_q(host);
 if (q) {
  blk_start_queue(q);
  VPRINTK("STARTED QUEUE %p\n", q);
 }
}
