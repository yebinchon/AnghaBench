
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct request {unsigned char* sense; int retries; int timeout; int cmd_flags; unsigned int resid_len; int errors; int q; int cmd_type; scalar_t__ sense_len; int cmd_len; int cmd; } ;


 int COMMAND_SIZE (unsigned char const) ;
 int DMA_TO_DEVICE ;
 int DRIVER_ERROR ;
 int REQ_PREEMPT ;
 int REQ_QUIET ;
 int REQ_TYPE_BLOCK_PC ;
 int __GFP_WAIT ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int,int ) ;
 int blk_put_request (struct request*) ;
 scalar_t__ blk_rq_map_kern (int ,struct request*,void*,unsigned int,int ) ;
 int memcpy (int ,unsigned char const*,int ) ;
 int memset (void*,int ,unsigned int) ;
 scalar_t__ unlikely (int) ;

int scsi_execute(struct scsi_device *sdev, const unsigned char *cmd,
   int data_direction, void *buffer, unsigned bufflen,
   unsigned char *sense, int timeout, int retries, int flags,
   int *resid)
{
 struct request *req;
 int write = (data_direction == DMA_TO_DEVICE);
 int ret = DRIVER_ERROR << 24;

 req = blk_get_request(sdev->request_queue, write, __GFP_WAIT);
 if (!req)
  return ret;

 if (bufflen && blk_rq_map_kern(sdev->request_queue, req,
     buffer, bufflen, __GFP_WAIT))
  goto out;

 req->cmd_len = COMMAND_SIZE(cmd[0]);
 memcpy(req->cmd, cmd, req->cmd_len);
 req->sense = sense;
 req->sense_len = 0;
 req->retries = retries;
 req->timeout = timeout;
 req->cmd_type = REQ_TYPE_BLOCK_PC;
 req->cmd_flags |= flags | REQ_QUIET | REQ_PREEMPT;




 blk_execute_rq(req->q, ((void*)0), req, 1);







 if (unlikely(req->resid_len > 0 && req->resid_len <= bufflen))
  memset(buffer + (bufflen - req->resid_len), 0, req->resid_len);

 if (resid)
  *resid = req->resid_len;
 ret = req->errors;
 out:
 blk_put_request(req);

 return ret;
}
