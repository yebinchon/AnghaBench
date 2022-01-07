
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct request_queue {int dummy; } ;
struct request {scalar_t__ cmd_type; struct i2o_block_request* special; } ;
struct i2o_block_request {TYPE_1__* i2o_blk_dev; } ;
struct i2o_block_delayed_request {int work; struct request_queue* queue; } ;
struct TYPE_4__ {int event_queue; } ;
struct TYPE_3__ {unsigned int open_queue_depth; } ;


 int EIO ;
 int GFP_ATOMIC ;
 unsigned int I2O_BLOCK_MAX_OPEN_REQUESTS ;
 int I2O_BLOCK_RETRY_TIME ;
 int INIT_DELAYED_WORK (int *,int ) ;
 scalar_t__ REQ_TYPE_FS ;
 int __blk_end_request_all (struct request*,int ) ;
 struct request* blk_peek_request (struct request_queue*) ;
 int blk_queue_plugged (struct request_queue*) ;
 int blk_start_request (struct request*) ;
 int blk_stop_queue (struct request_queue*) ;
 int i2o_block_delayed_request_fn ;
 TYPE_2__ i2o_block_driver ;
 int i2o_block_transfer (struct request*) ;
 int kfree (struct i2o_block_delayed_request*) ;
 struct i2o_block_delayed_request* kmalloc (int,int ) ;
 int osm_info (char*) ;
 int queue_delayed_work (int ,int *,int ) ;

__attribute__((used)) static void i2o_block_request_fn(struct request_queue *q)
{
 struct request *req;

 while (!blk_queue_plugged(q)) {
  req = blk_peek_request(q);
  if (!req)
   break;

  if (req->cmd_type == REQ_TYPE_FS) {
   struct i2o_block_delayed_request *dreq;
   struct i2o_block_request *ireq = req->special;
   unsigned int queue_depth;

   queue_depth = ireq->i2o_blk_dev->open_queue_depth;

   if (queue_depth < I2O_BLOCK_MAX_OPEN_REQUESTS) {
    if (!i2o_block_transfer(req)) {
     blk_start_request(req);
     continue;
    } else
     osm_info("transfer error\n");
   }

   if (queue_depth)
    break;


   dreq = kmalloc(sizeof(*dreq), GFP_ATOMIC);
   if (!dreq)
    continue;

   dreq->queue = q;
   INIT_DELAYED_WORK(&dreq->work,
       i2o_block_delayed_request_fn);

   if (!queue_delayed_work(i2o_block_driver.event_queue,
      &dreq->work,
      I2O_BLOCK_RETRY_TIME))
    kfree(dreq);
   else {
    blk_stop_queue(q);
    break;
   }
  } else {
   blk_start_request(req);
   __blk_end_request_all(req, -EIO);
  }
 }
}
