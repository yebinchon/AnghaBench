
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int ascq; int asc; int sense_key; } ;
struct scsi_device {int dummy; } ;
struct clariion_dh_data {int flags; int buffer; int sense; scalar_t__ senselen; } ;


 int CLARIION_NAME ;
 int CLARIION_SHORT_TRESPASS ;
 int KERN_ERR ;
 int KERN_INFO ;
 int SCSI_DH_DEV_UNSUPP ;
 int SCSI_DH_IO ;
 int SCSI_DH_OK ;
 int SCSI_SENSE_BUFFERSIZE ;
 char* parse_sp_model (struct scsi_device*,int ) ;
 scalar_t__ scsi_normalize_sense (int ,int ,struct scsi_sense_hdr*) ;
 int sdev_printk (int ,struct scsi_device*,char*,int ,char*,int ,...) ;
 int send_inquiry_cmd (struct scsi_device*,int ,struct clariion_dh_data*) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int clariion_std_inquiry(struct scsi_device *sdev,
    struct clariion_dh_data *csdev)
{
 int err;
 char *sp_model;

 err = send_inquiry_cmd(sdev, 0, csdev);
 if (err != SCSI_DH_OK && csdev->senselen) {
  struct scsi_sense_hdr sshdr;

  if (scsi_normalize_sense(csdev->sense, SCSI_SENSE_BUFFERSIZE,
      &sshdr)) {
   sdev_printk(KERN_ERR, sdev, "%s: INQUIRY sense code "
        "%02x/%02x/%02x\n", CLARIION_NAME,
        sshdr.sense_key, sshdr.asc, sshdr.ascq);
  }
  err = SCSI_DH_IO;
  goto out;
 }

 sp_model = parse_sp_model(sdev, csdev->buffer);
 if (!sp_model) {
  err = SCSI_DH_DEV_UNSUPP;
  goto out;
 }




 if (!strlen(sp_model) || !strncmp(sp_model, "FC",2))
  csdev->flags |= CLARIION_SHORT_TRESPASS;

 sdev_printk(KERN_INFO, sdev,
      "%s: detected Clariion %s, flags %x\n",
      CLARIION_NAME, sp_model, csdev->flags);
out:
 return err;
}
