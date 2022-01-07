
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct request_queue* request_queue; } ;
struct request_queue {int dummy; } ;
struct request {int* cmd; scalar_t__ sense_len; int sense; int cmd_len; } ;
struct rdac_dh_data {int sense; int inq; } ;


 int COMMAND_SIZE (int) ;
 int EIO ;
 int INQUIRY ;
 int READ ;
 int SCSI_DH_IO ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int blk_execute_rq (struct request_queue*,int *,struct request*,int) ;
 int blk_put_request (struct request*) ;
 struct request* get_rdac_req (struct scsi_device*,int *,unsigned int,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static int submit_inquiry(struct scsi_device *sdev, int page_code,
     unsigned int len, struct rdac_dh_data *h)
{
 struct request *rq;
 struct request_queue *q = sdev->request_queue;
 int err = SCSI_DH_RES_TEMP_UNAVAIL;

 rq = get_rdac_req(sdev, &h->inq, len, READ);
 if (!rq)
  goto done;


 rq->cmd[0] = INQUIRY;
 rq->cmd[1] = 1;
 rq->cmd[2] = page_code;
 rq->cmd[4] = len;
 rq->cmd_len = COMMAND_SIZE(INQUIRY);

 rq->sense = h->sense;
 memset(rq->sense, 0, SCSI_SENSE_BUFFERSIZE);
 rq->sense_len = 0;

 err = blk_execute_rq(q, ((void*)0), rq, 1);
 if (err == -EIO)
  err = SCSI_DH_IO;

 blk_put_request(rq);
done:
 return err;
}
