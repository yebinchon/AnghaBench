
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct nvme_ns* queuedata; } ;
struct nvme_queue {int q_lock; int sq_cong; int sq_cong_wait; int sq_full; int q_suspended; } ;
struct nvme_ns {int dev; } ;
struct bio {int dummy; } ;


 int EBUSY ;
 int EIO ;
 int add_wait_queue (int *,int *) ;
 int bio_endio (struct bio*,int ) ;
 int bio_list_add (int *,struct bio*) ;
 scalar_t__ bio_list_empty (int *) ;
 struct nvme_queue* get_nvmeq (int ) ;
 int nvme_process_cq (struct nvme_queue*) ;
 int nvme_submit_bio_queue (struct nvme_queue*,struct nvme_ns*,struct bio*) ;
 int put_nvmeq (struct nvme_queue*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int nvme_make_request(struct request_queue *q, struct bio *bio)
{
 struct nvme_ns *ns = q->queuedata;
 struct nvme_queue *nvmeq = get_nvmeq(ns->dev);
 int result = -EBUSY;

 if (!nvmeq) {
  put_nvmeq(((void*)0));
  bio_endio(bio, -EIO);
  return 0;
 }

 spin_lock_irq(&nvmeq->q_lock);
 if (!nvmeq->q_suspended && bio_list_empty(&nvmeq->sq_cong))
  result = nvme_submit_bio_queue(nvmeq, ns, bio);
 if (unlikely(result)) {
  if (bio_list_empty(&nvmeq->sq_cong))
   add_wait_queue(&nvmeq->sq_full, &nvmeq->sq_cong_wait);
  bio_list_add(&nvmeq->sq_cong, bio);
 }

 nvme_process_cq(nvmeq);
 spin_unlock_irq(&nvmeq->q_lock);
 put_nvmeq(nvmeq);
 return 0;
}
