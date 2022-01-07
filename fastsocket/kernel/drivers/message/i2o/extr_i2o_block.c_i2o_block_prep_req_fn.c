
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {struct i2o_block_device* queuedata; } ;
struct request {int cmd_flags; struct i2o_block_request* special; } ;
struct i2o_block_request {struct request* req; struct i2o_block_device* i2o_blk_dev; } ;
struct i2o_block_device {int dummy; } ;


 int BLKPREP_DEFER ;
 int BLKPREP_KILL ;
 int BLKPREP_OK ;
 scalar_t__ IS_ERR (struct i2o_block_request*) ;
 int REQ_DONTPREP ;
 struct i2o_block_request* i2o_block_request_alloc () ;
 int osm_debug (char*) ;
 int osm_err (char*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int i2o_block_prep_req_fn(struct request_queue *q, struct request *req)
{
 struct i2o_block_device *i2o_blk_dev = q->queuedata;
 struct i2o_block_request *ireq;

 if (unlikely(!i2o_blk_dev)) {
  osm_err("block device already removed\n");
  return BLKPREP_KILL;
 }


 if (!req->special) {
  ireq = i2o_block_request_alloc();
  if (IS_ERR(ireq)) {
   osm_debug("unable to allocate i2o_block_request!\n");
   return BLKPREP_DEFER;
  }

  ireq->i2o_blk_dev = i2o_blk_dev;
  req->special = ireq;
  ireq->req = req;
 }

 req->cmd_flags |= REQ_DONTPREP;

 return BLKPREP_OK;
}
