
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct request {int* cmd; int cmd_flags; int q; int retries; int timeout; int cmd_type; int cmd_len; } ;
typedef int short_trespass ;
typedef int long_trespass ;


 int BUG_ON (int) ;
 int CLARIION_BUFFER_SIZE ;
 int CLARIION_RETRIES ;
 int CLARIION_TIMEOUT ;
 int COMMAND_SIZE (int) ;
 int GFP_NOIO ;

 int KERN_INFO ;


 int READ ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_TYPE_BLOCK_PC ;
 int WRITE ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 scalar_t__ blk_rq_map_kern (int ,struct request*,unsigned char*,int,int ) ;
 int memset (unsigned char*,int ,int) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static struct request *get_req(struct scsi_device *sdev, int cmd,
    unsigned char *buffer)
{
 struct request *rq;
 int len = 0;

 rq = blk_get_request(sdev->request_queue,
   (cmd != 130) ? WRITE : READ, GFP_NOIO);
 if (!rq) {
  sdev_printk(KERN_INFO, sdev, "get_req: blk_get_request failed");
  return ((void*)0);
 }

 rq->cmd_len = COMMAND_SIZE(cmd);
 rq->cmd[0] = cmd;

 switch (cmd) {
 case 129:
  len = sizeof(short_trespass);
  rq->cmd[1] = 0x10;
  rq->cmd[4] = len;
  break;
 case 128:
  len = sizeof(long_trespass);
  rq->cmd[1] = 0x10;
  rq->cmd[8] = len;
  break;
 case 130:
  len = CLARIION_BUFFER_SIZE;
  rq->cmd[4] = len;
  memset(buffer, 0, len);
  break;
 default:
  BUG_ON(1);
  break;
 }

 rq->cmd_type = REQ_TYPE_BLOCK_PC;
 rq->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
    REQ_FAILFAST_DRIVER;
 rq->timeout = CLARIION_TIMEOUT;
 rq->retries = CLARIION_RETRIES;

 if (blk_rq_map_kern(rq->q, rq, buffer, len, GFP_NOIO)) {
  blk_put_request(rq);
  return ((void*)0);
 }

 return rq;
}
