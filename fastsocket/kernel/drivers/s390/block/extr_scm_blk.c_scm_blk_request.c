
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int aob; } ;
struct scm_device {int dev; } ;
struct scm_blk_dev {int queued_reqs; } ;
struct request_queue {struct scm_device* queuedata; } ;
struct request {scalar_t__ cmd_type; } ;


 scalar_t__ REQ_TYPE_FS ;
 int SCM_LOG (int,char*) ;
 int atomic_inc (int *) ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 struct scm_blk_dev* dev_get_drvdata (int *) ;
 int scm_ensure_queue_restart (struct scm_blk_dev*) ;
 int scm_initiate_cluster_request (struct scm_request*) ;
 scalar_t__ scm_need_cluster_request (struct scm_request*) ;
 int scm_permit_request (struct scm_blk_dev*,struct request*) ;
 int scm_request_done (struct scm_request*) ;
 struct scm_request* scm_request_fetch () ;
 int scm_request_init (struct scm_blk_dev*,struct scm_request*,struct request*) ;
 int scm_request_prepare (struct scm_request*) ;
 int scm_request_requeue (struct scm_request*) ;
 int scm_reserve_cluster (struct scm_request*) ;
 int scm_start_aob (int ) ;

__attribute__((used)) static void scm_blk_request(struct request_queue *rq)
{
 struct scm_device *scmdev = rq->queuedata;
 struct scm_blk_dev *bdev = dev_get_drvdata(&scmdev->dev);
 struct scm_request *scmrq;
 struct request *req;
 int ret;

 while ((req = blk_peek_request(rq))) {
  if (req->cmd_type != REQ_TYPE_FS)
   continue;

  if (!scm_permit_request(bdev, req)) {
   scm_ensure_queue_restart(bdev);
   return;
  }
  scmrq = scm_request_fetch();
  if (!scmrq) {
   SCM_LOG(5, "no request");
   scm_ensure_queue_restart(bdev);
   return;
  }
  scm_request_init(bdev, scmrq, req);
  if (!scm_reserve_cluster(scmrq)) {
   SCM_LOG(5, "cluster busy");
   scm_request_done(scmrq);
   return;
  }
  if (scm_need_cluster_request(scmrq)) {
   atomic_inc(&bdev->queued_reqs);
   blk_start_request(req);
   scm_initiate_cluster_request(scmrq);
   return;
  }
  scm_request_prepare(scmrq);
  atomic_inc(&bdev->queued_reqs);
  blk_start_request(req);

  ret = scm_start_aob(scmrq->aob);
  if (ret) {
   SCM_LOG(5, "no subchannel");
   scm_request_requeue(scmrq);
   return;
  }
 }
}
