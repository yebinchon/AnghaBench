
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int sense_key; int asc; int ascq; int response_code; } ;
struct scsi_disk {int dummy; } ;
struct scsi_cmnd {int result; unsigned char* cmnd; struct request* request; int sense_buffer; } ;
struct request {int cmd_flags; int rq_disk; } ;



 scalar_t__ DRIVER_SENSE ;


 int KERN_INFO ;


 scalar_t__ READ ;

 int REQ_DISCARD ;
 int SCSI_LOG_HLCOMPLETE (int,int ) ;
 int SCSI_SENSE_BUFFERSIZE ;
 int SD_LBP_DISABLE ;
 unsigned char UNMAP ;
 unsigned char WRITE_SAME ;
 unsigned char WRITE_SAME_16 ;
 unsigned int blk_rq_bytes (struct request*) ;
 scalar_t__ driver_byte (int) ;
 int memset (int ,int ,int ) ;
 scalar_t__ rq_data_dir (struct request*) ;
 int scmd_printk (int ,struct scsi_cmnd*,char*,int ,int,int,int ) ;
 unsigned int scsi_bufflen (struct scsi_cmnd*) ;
 int scsi_command_normalize_sense (struct scsi_cmnd*,struct scsi_sense_hdr*) ;
 struct scsi_disk* scsi_disk (int ) ;
 int scsi_print_result (struct scsi_cmnd*) ;
 int scsi_print_sense (char*,struct scsi_cmnd*) ;
 scalar_t__ scsi_prot_sg_count (struct scsi_cmnd*) ;
 int scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 int scsi_set_resid (struct scsi_cmnd*,unsigned int) ;
 unsigned int sd_completed_bytes (struct scsi_cmnd*) ;
 int sd_config_discard (struct scsi_disk*,int ) ;
 int sd_dif_complete (struct scsi_cmnd*,unsigned int) ;

__attribute__((used)) static int sd_done(struct scsi_cmnd *SCpnt)
{
 int result = SCpnt->result;
 unsigned int good_bytes = result ? 0 : scsi_bufflen(SCpnt);
 struct scsi_sense_hdr sshdr;
 struct scsi_disk *sdkp = scsi_disk(SCpnt->request->rq_disk);
 struct request *req = SCpnt->request;
 int sense_valid = 0;
 int sense_deferred = 0;
 unsigned char op = SCpnt->cmnd[0];

 if (req->cmd_flags & REQ_DISCARD) {
  if (!result) {
   good_bytes = blk_rq_bytes(req);
   scsi_set_resid(SCpnt, 0);
  } else {
   good_bytes = 0;
   scsi_set_resid(SCpnt, blk_rq_bytes(req));
  }
 }

 if (result) {
  sense_valid = scsi_command_normalize_sense(SCpnt, &sshdr);
  if (sense_valid)
   sense_deferred = scsi_sense_is_deferred(&sshdr);
 }
 if (driver_byte(result) != DRIVER_SENSE &&
     (!sense_valid || sense_deferred))
  goto out;

 switch (sshdr.sense_key) {
 case 132:
 case 130:
  good_bytes = sd_completed_bytes(SCpnt);
  break;
 case 128:
  good_bytes = scsi_bufflen(SCpnt);
  break;
 case 129:




  scsi_print_sense("sd", SCpnt);
  SCpnt->result = 0;
  memset(SCpnt->sense_buffer, 0, SCSI_SENSE_BUFFERSIZE);
  break;
 case 133:
  if (sshdr.asc == 0x10)
   good_bytes = sd_completed_bytes(SCpnt);
  break;
 case 131:
  if (sshdr.asc == 0x10)
   good_bytes = sd_completed_bytes(SCpnt);

  if ((sshdr.asc == 0x20 || sshdr.asc == 0x24) &&
      (op == UNMAP || op == WRITE_SAME_16 || op == WRITE_SAME))
   sd_config_discard(sdkp, SD_LBP_DISABLE);
  break;
 default:
  break;
 }
 out:
 if (rq_data_dir(SCpnt->request) == READ && scsi_prot_sg_count(SCpnt))
  sd_dif_complete(SCpnt, good_bytes);

 return good_bytes;
}
