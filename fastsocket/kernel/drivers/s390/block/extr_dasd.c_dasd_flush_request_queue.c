
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct dasd_block {int request_queue_lock; int request_queue; } ;


 int EIO ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_fetch_request (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void dasd_flush_request_queue(struct dasd_block *block)
{
 struct request *req;

 if (!block->request_queue)
  return;

 spin_lock_irq(&block->request_queue_lock);
 while ((req = blk_fetch_request(block->request_queue)))
  __blk_end_request_all(req, -EIO);
 spin_unlock_irq(&block->request_queue_lock);
}
