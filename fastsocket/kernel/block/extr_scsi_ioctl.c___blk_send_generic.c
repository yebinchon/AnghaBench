
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request_queue {int dummy; } ;
struct request {int* cmd; int cmd_len; int timeout; int cmd_type; } ;
struct gendisk {int dummy; } ;


 int BLK_DEFAULT_SG_TIMEOUT ;
 int ENODEV ;
 int REQ_TYPE_BLOCK_PC ;
 int WRITE ;
 int __GFP_WAIT ;
 int blk_execute_rq (struct request_queue*,struct gendisk*,struct request*,int ) ;
 struct request* blk_get_request (struct request_queue*,int ,int ) ;
 int blk_put_request (struct request*) ;

__attribute__((used)) static int __blk_send_generic(struct request_queue *q, struct gendisk *bd_disk,
         int cmd, int data)
{
 struct request *rq;
 int err;

 rq = blk_get_request(q, WRITE, __GFP_WAIT);
 if (!rq)
  return -ENODEV;
 rq->cmd_type = REQ_TYPE_BLOCK_PC;
 rq->timeout = BLK_DEFAULT_SG_TIMEOUT;
 rq->cmd[0] = cmd;
 rq->cmd[4] = data;
 rq->cmd_len = 6;
 err = blk_execute_rq(q, bd_disk, rq, 0);
 blk_put_request(rq);

 return err;
}
