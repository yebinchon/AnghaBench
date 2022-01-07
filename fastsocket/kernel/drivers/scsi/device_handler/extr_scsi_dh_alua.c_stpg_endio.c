
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; int sense_key; } ;
struct request {int q; struct alua_dh_data* end_io_data; int errors; } ;
struct alua_dh_data {scalar_t__ senselen; int * callback_data; int (* callback_fn ) (int *,unsigned int) ;int state; int group_id; int sdev; int sense; } ;


 unsigned int ADD_TO_MLQUEUE ;
 int ALUA_DH_NAME ;
 scalar_t__ COMMAND_COMPLETE ;
 scalar_t__ DID_OK ;
 int KERN_INFO ;
 unsigned int SCSI_DH_IO ;
 unsigned int SCSI_DH_OK ;
 unsigned int SCSI_DH_RETRY ;
 int SCSI_SENSE_BUFFERSIZE ;
 int TPGS_STATE_OPTIMIZED ;
 int __blk_put_request (int ,struct request*) ;
 unsigned int alua_check_sense (int ,struct scsi_sense_hdr*) ;
 scalar_t__ host_byte (int ) ;
 scalar_t__ msg_byte (int ) ;
 int print_alua_state (int ) ;
 unsigned int scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;
 int sdev_printk (int ,int ,char*,int ,int ,int ,...) ;
 int stub1 (int *,unsigned int) ;

__attribute__((used)) static void stpg_endio(struct request *req, int error)
{
 struct alua_dh_data *h = req->end_io_data;
 struct scsi_sense_hdr sense_hdr;
 unsigned err = SCSI_DH_OK;

 if (error || host_byte(req->errors) != DID_OK ||
   msg_byte(req->errors) != COMMAND_COMPLETE) {
  err = SCSI_DH_IO;
  goto done;
 }

 if (h->senselen > 0) {
  err = scsi_normalize_sense(h->sense, SCSI_SENSE_BUFFERSIZE,
        &sense_hdr);
  if (!err) {
   err = SCSI_DH_IO;
   goto done;
  }
  err = alua_check_sense(h->sdev, &sense_hdr);
  if (err == ADD_TO_MLQUEUE) {
   err = SCSI_DH_RETRY;
   goto done;
  }
  sdev_printk(KERN_INFO, h->sdev,
       "%s: stpg sense code: %02x/%02x/%02x\n",
       ALUA_DH_NAME, sense_hdr.sense_key,
       sense_hdr.asc, sense_hdr.ascq);
  err = SCSI_DH_IO;
 }
 if (err == SCSI_DH_OK) {
  h->state = TPGS_STATE_OPTIMIZED;
  sdev_printk(KERN_INFO, h->sdev,
       "%s: port group %02x switched to state %c\n",
       ALUA_DH_NAME, h->group_id,
       print_alua_state(h->state));
 }
done:
 req->end_io_data = ((void*)0);
 __blk_put_request(req->q, req);
 if (h->callback_fn) {
  h->callback_fn(h->callback_data, err);
  h->callback_fn = h->callback_data = ((void*)0);
 }
 return;
}
