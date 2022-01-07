
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int q; struct completion* end_io_data; } ;
struct completion {int dummy; } ;


 int __blk_put_request (int ,struct request*) ;
 int complete (struct completion*) ;

__attribute__((used)) static void blk_end_sync_rq(struct request *rq, int error)
{
 struct completion *waiting = rq->end_io_data;

 rq->end_io_data = ((void*)0);
 __blk_put_request(rq->q, rq);





 complete(waiting);
}
