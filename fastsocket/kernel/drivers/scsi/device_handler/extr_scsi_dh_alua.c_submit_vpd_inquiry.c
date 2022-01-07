
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct request {int* cmd; scalar_t__ sense_len; int errors; int q; int sense; int cmd_len; } ;
struct alua_dh_data {int bufflen; scalar_t__ senselen; int sense; int buff; } ;


 int ALUA_DH_NAME ;
 int COMMAND_SIZE (int) ;
 int EIO ;
 int INQUIRY ;
 int KERN_INFO ;
 int READ ;
 int SCSI_DH_IO ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 int blk_put_request (struct request*) ;
 struct request* get_alua_req (struct scsi_device*,int ,int,int ) ;
 int memset (int ,int ,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int ) ;

__attribute__((used)) static int submit_vpd_inquiry(struct scsi_device *sdev, struct alua_dh_data *h)
{
 struct request *rq;
 int err = SCSI_DH_RES_TEMP_UNAVAIL;

 rq = get_alua_req(sdev, h->buff, h->bufflen, READ);
 if (!rq)
  goto done;


 rq->cmd[0] = INQUIRY;
 rq->cmd[1] = 1;
 rq->cmd[2] = 0x83;
 rq->cmd[4] = h->bufflen;
 rq->cmd_len = COMMAND_SIZE(INQUIRY);

 rq->sense = h->sense;
 memset(rq->sense, 0, SCSI_SENSE_BUFFERSIZE);
 rq->sense_len = h->senselen = 0;

 err = blk_execute_rq(rq->q, ((void*)0), rq, 1);
 if (err == -EIO) {
  sdev_printk(KERN_INFO, sdev,
       "%s: evpd inquiry failed with %x\n",
       ALUA_DH_NAME, rq->errors);
  h->senselen = rq->sense_len;
  err = SCSI_DH_IO;
 }
 blk_put_request(rq);
done:
 return err;
}
