
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int error; int request; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int queued_reqs; } ;


 int atomic_dec (int *) ;
 int blk_end_request_all (int ,int ) ;
 int scm_release_cluster (struct scm_request*) ;
 int scm_request_done (struct scm_request*) ;

void scm_request_finish(struct scm_request *scmrq)
{
 struct scm_blk_dev *bdev = scmrq->bdev;

 scm_release_cluster(scmrq);
 blk_end_request_all(scmrq->request, scmrq->error);
 atomic_dec(&bdev->queued_reqs);
 scm_request_done(scmrq);
}
