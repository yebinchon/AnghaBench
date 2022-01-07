
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int errors; struct bsg_job* special; } ;
struct bsg_job {int dummy; } ;


 int blk_end_request_all (struct request*,int ) ;
 int bsg_destroy_job (struct bsg_job*) ;

__attribute__((used)) static void bsg_softirq_done(struct request *rq)
{
 struct bsg_job *job = rq->special;

 blk_end_request_all(rq, rq->errors);
 bsg_destroy_job(job);
}
