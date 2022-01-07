
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct request_queue {int queue_lock; } ;
struct request {TYPE_1__* rq_disk; struct request_queue* q; scalar_t__ errors; } ;
struct TYPE_2__ {int disk_name; } ;


 int DBG_BLKDEV ;
 int EIO ;
 int __blk_end_request_all (struct request*,int) ;
 int dprintk (int ,char*,int ,struct request*,char*) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void nbd_end_request(struct request *req)
{
 int error = req->errors ? -EIO : 0;
 struct request_queue *q = req->q;
 unsigned long flags;

 dprintk(DBG_BLKDEV, "%s: request %p: %s\n", req->rq_disk->disk_name,
   req, error ? "failed" : "done");

 spin_lock_irqsave(q->queue_lock, flags);
 __blk_end_request_all(req, error);
 spin_unlock_irqrestore(q->queue_lock, flags);
}
