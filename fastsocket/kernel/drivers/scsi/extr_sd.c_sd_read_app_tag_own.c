
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_mode_data {int header_length; int length; int block_descriptor_length; } ;
struct scsi_disk {scalar_t__ protection_type; int ATO; struct scsi_device* device; } ;
struct scsi_device {scalar_t__ type; } ;


 int KERN_ERR ;
 int KERN_WARNING ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 scalar_t__ TYPE_DISK ;
 int scsi_mode_sense (struct scsi_device*,int,int,unsigned char*,int,int ,int ,struct scsi_mode_data*,struct scsi_sense_hdr*) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int scsi_status_is_good (int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

void sd_read_app_tag_own(struct scsi_disk *sdkp, unsigned char *buffer)
{
 int res, offset;
 struct scsi_device *sdp = sdkp->device;
 struct scsi_mode_data data;
 struct scsi_sense_hdr sshdr;

 if (sdp->type != TYPE_DISK)
  return;

 if (sdkp->protection_type == 0)
  return;

 res = scsi_mode_sense(sdp, 1, 0x0a, buffer, 36, SD_TIMEOUT,
         SD_MAX_RETRIES, &data, &sshdr);

 if (!scsi_status_is_good(res) || !data.header_length ||
     data.length < 6) {
  sd_printk(KERN_WARNING, sdkp,
     "getting Control mode page failed, assume no ATO\n");

  if (scsi_sense_valid(&sshdr))
   sd_print_sense_hdr(sdkp, &sshdr);

  return;
 }

 offset = data.header_length + data.block_descriptor_length;

 if ((buffer[offset] & 0x3f) != 0x0a) {
  sd_printk(KERN_ERR, sdkp, "ATO Got wrong page\n");
  return;
 }

 if ((buffer[offset + 5] & 0x80) == 0)
  return;

 sdkp->ATO = 1;

 return;
}
