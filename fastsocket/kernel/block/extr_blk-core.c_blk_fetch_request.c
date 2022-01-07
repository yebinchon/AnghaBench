
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int dummy; } ;


 struct request* blk_peek_request (struct request_queue*) ;
 int blk_start_request (struct request*) ;

struct request *blk_fetch_request(struct request_queue *q)
{
 struct request *rq;

 rq = blk_peek_request(q);
 if (rq)
  blk_start_request(rq);
 return rq;
}
