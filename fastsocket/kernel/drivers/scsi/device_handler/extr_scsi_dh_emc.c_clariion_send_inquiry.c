
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; int sense_key; } ;
struct scsi_device {int dummy; } ;
struct clariion_dh_data {int sense; scalar_t__ senselen; } ;


 int ADD_TO_MLQUEUE ;
 int CLARIION_NAME ;
 int CLARIION_RETRIES ;
 int KERN_ERR ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_SENSE_BUFFERSIZE ;
 int clariion_check_sense (struct scsi_device*,struct scsi_sense_hdr*) ;
 int parse_sp_info_reply (struct scsi_device*,struct clariion_dh_data*) ;
 int scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,int ,int ,int ) ;
 int send_inquiry_cmd (struct scsi_device*,int,struct clariion_dh_data*) ;

__attribute__((used)) static int clariion_send_inquiry(struct scsi_device *sdev,
     struct clariion_dh_data *csdev)
{
 int err, retry = CLARIION_RETRIES;

retry:
 err = send_inquiry_cmd(sdev, 0xC0, csdev);
 if (err != SCSI_DH_OK && csdev->senselen) {
  struct scsi_sense_hdr sshdr;

  err = scsi_normalize_sense(csdev->sense, SCSI_SENSE_BUFFERSIZE,
        &sshdr);
  if (!err)
   return SCSI_DH_IO;

  err = clariion_check_sense(sdev, &sshdr);
  if (retry > 0 && err == ADD_TO_MLQUEUE) {
   retry--;
   goto retry;
  }
  sdev_printk(KERN_ERR, sdev, "%s: INQUIRY sense code "
       "%02x/%02x/%02x\n", CLARIION_NAME,
         sshdr.sense_key, sshdr.asc, sshdr.ascq);
  err = SCSI_DH_IO;
 } else {
  err = parse_sp_info_reply(sdev, csdev);
 }
 return err;
}
