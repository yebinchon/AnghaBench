
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ub_lun {int dummy; } ;
struct request_queue {struct ub_lun* queuedata; } ;
struct request {int dummy; } ;


 struct request* blk_peek_request (struct request_queue*) ;
 int blk_stop_queue (struct request_queue*) ;
 scalar_t__ ub_request_fn_1 (struct ub_lun*,struct request*) ;

__attribute__((used)) static void ub_request_fn(struct request_queue *q)
{
 struct ub_lun *lun = q->queuedata;
 struct request *rq;

 while ((rq = blk_peek_request(q)) != ((void*)0)) {
  if (ub_request_fn_1(lun, rq) != 0) {
   blk_stop_queue(q);
   break;
  }
 }
}
