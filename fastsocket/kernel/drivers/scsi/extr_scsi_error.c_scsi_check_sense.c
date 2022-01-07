
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_sense_hdr {int response_code; int additional_length; int sense_key; int asc; int ascq; } ;
struct scsi_device {int retry_hwerror; int allow_restart; int expecting_cc_ua; TYPE_2__* scsi_dh_data; } ;
struct scsi_cmnd {int* sense_buffer; struct scsi_device* device; } ;
struct TYPE_4__ {TYPE_1__* scsi_dh; } ;
struct TYPE_3__ {int (* check_sense ) (struct scsi_device*,struct scsi_sense_hdr*) ;} ;



 int ADD_TO_MLQUEUE ;



 int FAILED ;


 int KERN_WARNING ;


 int NEEDS_RETRY ;



 int SCSI_RETURN_NOT_HANDLED ;
 int SUCCESS ;
 int TARGET_ERROR ;


 int scmd_printk (int ,struct scsi_cmnd*,char*) ;
 int scsi_command_normalize_sense (struct scsi_cmnd*,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_sense_is_deferred (struct scsi_sense_hdr*) ;
 int stub1 (struct scsi_device*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int scsi_check_sense(struct scsi_cmnd *scmd)
{
 struct scsi_device *sdev = scmd->device;
 struct scsi_sense_hdr sshdr;

 if (! scsi_command_normalize_sense(scmd, &sshdr))
  return FAILED;

 if (scsi_sense_is_deferred(&sshdr))
  return NEEDS_RETRY;

 if (sdev->scsi_dh_data && sdev->scsi_dh_data->scsi_dh &&
   sdev->scsi_dh_data->scsi_dh->check_sense) {
  int rc;

  rc = sdev->scsi_dh_data->scsi_dh->check_sense(sdev, &sshdr);
  if (rc != SCSI_RETURN_NOT_HANDLED)
   return rc;

 }





 if (sshdr.response_code == 0x70) {

  if (scmd->sense_buffer[2] & 0xe0)
   return SUCCESS;
 } else {





  if ((sshdr.additional_length > 3) &&
      (scmd->sense_buffer[8] == 0x4) &&
      (scmd->sense_buffer[11] & 0xe0))
   return SUCCESS;
 }

 switch (sshdr.sense_key) {
 case 131:
  return SUCCESS;
 case 130:
  return SUCCESS;

 case 140:
  if (sshdr.asc == 0x10)
   return SUCCESS;

  return NEEDS_RETRY;
 case 132:
 case 129:






  if (scmd->device->expecting_cc_ua) {






   if (sshdr.asc != 0x28 || sshdr.ascq != 0x00) {
    scmd->device->expecting_cc_ua = 0;
    return NEEDS_RETRY;
   }
  }




  if ((sshdr.asc == 0x04) && (sshdr.ascq == 0x01))
   return NEEDS_RETRY;




  if (scmd->device->allow_restart &&
      (sshdr.asc == 0x04) && (sshdr.ascq == 0x02))
   return FAILED;

  if (sshdr.asc == 0x3f && sshdr.ascq == 0x0e)
   scmd_printk(KERN_WARNING, scmd,
        "Warning! Received an indication that the "
        "LUN assignments on this target have "
        "changed. The Linux SCSI layer does not "
        "automatically remap LUN assignments.\n");
  else if (sshdr.asc == 0x3f)
   scmd_printk(KERN_WARNING, scmd,
        "Warning! Received an indication that the "
        "operating parameters on this target have "
        "changed. The Linux SCSI layer does not "
        "automatically adjust these parameters.\n");

  if (sshdr.asc == 0x38 && sshdr.ascq == 0x07)
   scmd_printk(KERN_WARNING, scmd,
        "Warning! Received an indication that the "
        "LUN reached a thin provisioning soft "
        "threshold.\n");





  return SUCCESS;


 case 138:
 case 128:
 case 133:
 case 139:
 case 137:
  return TARGET_ERROR;

 case 134:
  if (sshdr.asc == 0x11 ||
      sshdr.asc == 0x13 ||
      sshdr.asc == 0x14) {
   return TARGET_ERROR;
  }
  return NEEDS_RETRY;

 case 136:
  if (scmd->device->retry_hwerror)
   return ADD_TO_MLQUEUE;
  else
   return TARGET_ERROR;

 case 135:
  if (sshdr.asc == 0x20 ||
      sshdr.asc == 0x21 ||
      sshdr.asc == 0x24 ||
      sshdr.asc == 0x26) {
   return TARGET_ERROR;
  }
  return SUCCESS;

 default:
  return SUCCESS;
 }
}
