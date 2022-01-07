
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int request; struct scm_blk_dev* bdev; } ;
struct scm_blk_dev {int queued_reqs; int rq; } ;


 int atomic_dec (int *) ;
 int blk_requeue_request (int ,int ) ;
 int scm_ensure_queue_restart (struct scm_blk_dev*) ;
 int scm_release_cluster (struct scm_request*) ;
 int scm_request_done (struct scm_request*) ;

void scm_request_requeue(struct scm_request *scmrq)
{
 struct scm_blk_dev *bdev = scmrq->bdev;

 scm_release_cluster(scmrq);
 blk_requeue_request(bdev->rq, scmrq->request);
 atomic_dec(&bdev->queued_reqs);
 scm_request_done(scmrq);
 scm_ensure_queue_restart(bdev);
}
