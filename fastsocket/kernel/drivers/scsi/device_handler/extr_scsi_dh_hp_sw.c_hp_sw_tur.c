
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int request_queue; } ;
struct request {int cmd_flags; scalar_t__ sense_len; int errors; int q; int sense; int timeout; int * cmd; int cmd_len; int cmd_type; } ;
struct hp_sw_dh_data {int path_state; int sense; } ;


 int COMMAND_SIZE (int ) ;
 int EIO ;
 int GFP_NOIO ;
 int HP_SW_NAME ;
 int HP_SW_PATH_ACTIVE ;
 int HP_SW_PATH_PASSIVE ;
 int HP_SW_TIMEOUT ;
 int KERN_WARNING ;
 int REQ_FAILFAST_DEV ;
 int REQ_FAILFAST_DRIVER ;
 int REQ_FAILFAST_TRANSPORT ;
 int REQ_TYPE_BLOCK_PC ;
 int SCSI_DH_DEV_OFFLINED ;
 int SCSI_DH_IMM_RETRY ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_DH_RES_TEMP_UNAVAIL ;
 int SCSI_SENSE_BUFFERSIZE ;
 int TEST_UNIT_READY ;
 int WRITE ;
 int blk_execute_rq (int ,int *,struct request*,int) ;
 struct request* blk_get_request (int ,int ,int ) ;
 int blk_put_request (struct request*) ;
 int memset (int ,int ,int ) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int ) ;
 int tur_done (struct scsi_device*,int ) ;

__attribute__((used)) static int hp_sw_tur(struct scsi_device *sdev, struct hp_sw_dh_data *h)
{
 struct request *req;
 int ret;

retry:
 req = blk_get_request(sdev->request_queue, WRITE, GFP_NOIO);
 if (!req)
  return SCSI_DH_RES_TEMP_UNAVAIL;

 req->cmd_type = REQ_TYPE_BLOCK_PC;
 req->cmd_flags |= REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT |
     REQ_FAILFAST_DRIVER;
 req->cmd_len = COMMAND_SIZE(TEST_UNIT_READY);
 req->cmd[0] = TEST_UNIT_READY;
 req->timeout = HP_SW_TIMEOUT;
 req->sense = h->sense;
 memset(req->sense, 0, SCSI_SENSE_BUFFERSIZE);
 req->sense_len = 0;

 ret = blk_execute_rq(req->q, ((void*)0), req, 1);
 if (ret == -EIO) {
  if (req->sense_len > 0) {
   ret = tur_done(sdev, h->sense);
  } else {
   sdev_printk(KERN_WARNING, sdev,
        "%s: sending tur failed with %x\n",
        HP_SW_NAME, req->errors);
   ret = SCSI_DH_IO;
  }
 } else {
  h->path_state = HP_SW_PATH_ACTIVE;
  ret = SCSI_DH_OK;
 }
 if (ret == SCSI_DH_IMM_RETRY) {
  blk_put_request(req);
  goto retry;
 }
 if (ret == SCSI_DH_DEV_OFFLINED) {
  h->path_state = HP_SW_PATH_PASSIVE;
  ret = SCSI_DH_OK;
 }

 blk_put_request(req);

 return ret;
}
