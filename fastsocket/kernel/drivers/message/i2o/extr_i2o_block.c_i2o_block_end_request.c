
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int queue_lock; } ;
struct request {struct request_queue* q; struct i2o_block_request* special; } ;
struct i2o_block_request {int queue; struct i2o_block_device* i2o_blk_dev; } ;
struct i2o_block_device {int open_queue_depth; } ;


 int EIO ;
 scalar_t__ blk_end_request (struct request*,int,int) ;
 int blk_end_request_all (struct request*,int ) ;
 int blk_start_queue (struct request_queue*) ;
 int i2o_block_request_free (struct i2o_block_request*) ;
 int i2o_block_sglist_free (struct i2o_block_request*) ;
 scalar_t__ likely (struct i2o_block_device*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int ,unsigned long) ;
 int spin_unlock_irqrestore (int ,unsigned long) ;

__attribute__((used)) static void i2o_block_end_request(struct request *req, int error,
      int nr_bytes)
{
 struct i2o_block_request *ireq = req->special;
 struct i2o_block_device *dev = ireq->i2o_blk_dev;
 struct request_queue *q = req->q;
 unsigned long flags;

 if (blk_end_request(req, error, nr_bytes))
  if (error)
   blk_end_request_all(req, -EIO);

 spin_lock_irqsave(q->queue_lock, flags);

 if (likely(dev)) {
  dev->open_queue_depth--;
  list_del(&ireq->queue);
 }

 blk_start_queue(q);

 spin_unlock_irqrestore(q->queue_lock, flags);

 i2o_block_sglist_free(ireq);
 i2o_block_request_free(ireq);
}
