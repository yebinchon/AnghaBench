
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct request {int cmd_flags; int timeout; int retries; int cmd_type; } ;


 int GFP_NOIO ;
 int KERN_INFO ;
 int RDAC_RETRIES ;
 int RDAC_TIMEOUT ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_TYPE_BLOCK_PC ;
 struct request* blk_get_request (struct request_queue*,int,int ) ;
 int blk_put_request (struct request*) ;
 scalar_t__ blk_rq_map_kern (struct request_queue*,struct request*,void*,unsigned int,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*) ;

__attribute__((used)) static struct request *get_rdac_req(struct scsi_device *sdev,
   void *buffer, unsigned buflen, int rw)
{
 struct request *rq;
 struct request_queue *q = sdev->request_queue;

 rq = blk_get_request(q, rw, GFP_NOIO);

 if (!rq) {
  sdev_printk(KERN_INFO, sdev,
    "get_rdac_req: blk_get_request failed.\n");
  return ((void*)0);
 }

 if (buflen && blk_rq_map_kern(q, rq, buffer, buflen, GFP_NOIO)) {
  blk_put_request(rq);
  sdev_printk(KERN_INFO, sdev,
    "get_rdac_req: blk_rq_map_kern failed.\n");
  return ((void*)0);
 }

 rq->cmd_type = REQ_TYPE_BLOCK_PC;
 rq->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
    REQ_FAILFAST_DRIVER;
 rq->retries = RDAC_RETRIES;
 rq->timeout = RDAC_TIMEOUT;

 return rq;
}
