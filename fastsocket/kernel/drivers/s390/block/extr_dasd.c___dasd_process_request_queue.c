
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {int dummy; } ;
struct dasd_device {scalar_t__ state; int features; int cdev; TYPE_1__* discipline; } ;
struct dasd_ccw_req {int blocklist; int status; void* callback_data; } ;
struct dasd_block {int ccw_queue; struct request_queue* request_queue; struct dasd_device* base; } ;
struct TYPE_2__ {struct dasd_ccw_req* (* build_cp ) (struct dasd_device*,struct dasd_block*,struct request*) ;} ;


 int DASD_CQR_FILLED ;
 int DASD_FEATURE_READONLY ;
 scalar_t__ DASD_STATE_READY ;
 int DASD_STOPPED_PENDING ;
 int DBF_DEV_EVENT (int ,struct dasd_device*,char*,int ,...) ;
 int DBF_ERR ;
 int EAGAIN ;
 int EBUSY ;
 int EIO ;
 int ENOMEM ;
 int HZ ;
 scalar_t__ IS_ERR (struct dasd_ccw_req*) ;
 int PTR_ERR (struct dasd_ccw_req*) ;
 scalar_t__ WRITE ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (struct request_queue*) ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_queue_plugged (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 int dasd_block_set_timer (struct dasd_block*,int) ;
 int dasd_device_set_stop_bits (struct dasd_device*,int ) ;
 int dasd_profile_start (struct dasd_block*,struct dasd_ccw_req*,struct request*) ;
 int get_ccwdev_lock (int ) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;
 struct dasd_ccw_req* stub1 (struct dasd_device*,struct dasd_block*,struct request*) ;

__attribute__((used)) static void __dasd_process_request_queue(struct dasd_block *block)
{
 struct request_queue *queue;
 struct request *req;
 struct dasd_ccw_req *cqr;
 struct dasd_device *basedev;
 unsigned long flags;
 queue = block->request_queue;
 basedev = block->base;

 if (queue == ((void*)0))
  return;
 if (basedev->state < DASD_STATE_READY) {
  while ((req = blk_fetch_request(block->request_queue)))
   __blk_end_request_all(req, -EIO);
  return;
 }

 while (!blk_queue_plugged(queue) && (req = blk_peek_request(queue))) {
  if (basedev->features & DASD_FEATURE_READONLY &&
      rq_data_dir(req) == WRITE) {
   DBF_DEV_EVENT(DBF_ERR, basedev,
          "Rejecting write request %p",
          req);
   blk_start_request(req);
   __blk_end_request_all(req, -EIO);
   continue;
  }
  cqr = basedev->discipline->build_cp(basedev, block, req);
  if (IS_ERR(cqr)) {
   if (PTR_ERR(cqr) == -EBUSY)
    break;
   if (PTR_ERR(cqr) == -ENOMEM)
    break;
   if (PTR_ERR(cqr) == -EAGAIN) {






    if (!list_empty(&block->ccw_queue))
     break;
    spin_lock_irqsave(
     get_ccwdev_lock(basedev->cdev), flags);
    dasd_device_set_stop_bits(basedev,
         DASD_STOPPED_PENDING);
    spin_unlock_irqrestore(
     get_ccwdev_lock(basedev->cdev), flags);
    dasd_block_set_timer(block, HZ/2);
    break;
   }
   DBF_DEV_EVENT(DBF_ERR, basedev,
          "CCW creation failed (rc=%ld) "
          "on request %p",
          PTR_ERR(cqr), req);
   blk_start_request(req);
   __blk_end_request_all(req, -EIO);
   continue;
  }




  cqr->callback_data = (void *) req;
  cqr->status = DASD_CQR_FILLED;
  blk_start_request(req);
  list_add_tail(&cqr->blocklist, &block->ccw_queue);
  dasd_profile_start(block, cqr, req);
 }
}
