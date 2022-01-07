
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct request {int* cmd; scalar_t__ sense_len; int errors; int sense; } ;
struct clariion_dh_data {scalar_t__ senselen; int sense; int buffer; } ;


 int CLARIION_NAME ;
 int EIO ;
 int INQUIRY ;
 int KERN_INFO ;
 int SCSI_DH_IO ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 int blk_put_request (struct request*) ;
 struct request* get_req (struct scsi_device*,int,int ) ;
 int memset (int ,int ,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,char*,int ) ;

__attribute__((used)) static int send_inquiry_cmd(struct scsi_device *sdev, int page,
       struct clariion_dh_data *csdev)
{
 struct request *rq = get_req(sdev, INQUIRY, csdev->buffer);
 int err;

 if (!rq)
  return SCSI_DH_RES_TEMP_UNAVAIL;

 rq->sense = csdev->sense;
 memset(rq->sense, 0, SCSI_SENSE_BUFFERSIZE);
 rq->sense_len = csdev->senselen = 0;

 rq->cmd[0] = INQUIRY;
 if (page != 0) {
  rq->cmd[1] = 1;
  rq->cmd[2] = page;
 }
 err = blk_execute_rq(sdev->request_queue, ((void*)0), rq, 1);
 if (err == -EIO) {
  sdev_printk(KERN_INFO, sdev,
       "%s: failed to send %s INQUIRY: %x\n",
       CLARIION_NAME, page?"EVPD":"standard",
       rq->errors);
  csdev->senselen = rq->sense_len;
  err = SCSI_DH_IO;
 }

 blk_put_request(rq);

 return err;
}
