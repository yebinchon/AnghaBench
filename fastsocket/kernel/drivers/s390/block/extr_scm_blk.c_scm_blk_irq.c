
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scm_request {int error; int list; struct scm_blk_dev* bdev; } ;
struct scm_device {int dummy; } ;
struct scm_blk_dev {int tasklet; int lock; int finished_requests; } ;


 int __scmrq_log_error (struct scm_request*) ;
 int list_add_tail (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tasklet_hi_schedule (int *) ;

void scm_blk_irq(struct scm_device *scmdev, void *data, int error)
{
 struct scm_request *scmrq = data;
 struct scm_blk_dev *bdev = scmrq->bdev;

 scmrq->error = error;
 if (error)
  __scmrq_log_error(scmrq);

 spin_lock(&bdev->lock);
 list_add_tail(&scmrq->list, &bdev->finished_requests);
 spin_unlock(&bdev->lock);
 tasklet_hi_schedule(&bdev->tasklet);
}
