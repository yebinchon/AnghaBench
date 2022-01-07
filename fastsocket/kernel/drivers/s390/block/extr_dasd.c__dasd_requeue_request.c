
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dasd_ccw_req {scalar_t__ callback_data; struct dasd_block* block; } ;
struct dasd_block {int queue_lock; int request_queue; } ;


 int EINVAL ;
 int blk_requeue_request (int ,struct request*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int _dasd_requeue_request(struct dasd_ccw_req *cqr)
{
 struct dasd_block *block = cqr->block;
 struct request *req;
 unsigned long flags;

 if (!block)
  return -EINVAL;
 spin_lock_irqsave(&block->queue_lock, flags);
 req = (struct request *) cqr->callback_data;
 blk_requeue_request(block->request_queue, req);
 spin_unlock_irqrestore(&block->queue_lock, flags);

 return 0;
}
