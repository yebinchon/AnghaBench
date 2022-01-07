
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int asc; } ;
struct scsi_disk {int media_present; int previous_state; struct scsi_device* device; } ;
struct scsi_device {int changed; int removable; } ;
struct gendisk {int dummy; } ;


 int ENODEV ;
 int GFP_KERNEL ;
 int KERN_INFO ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SDEV_EVT_MEDIA_CHANGE ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 int kfree (struct scsi_sense_hdr*) ;
 struct scsi_sense_hdr* kzalloc (int,int ) ;
 scalar_t__ scsi_block_when_processing_errors (struct scsi_device*) ;
 int scsi_device_online (struct scsi_device*) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 scalar_t__ scsi_sense_valid (struct scsi_sense_hdr*) ;
 int scsi_test_unit_ready (struct scsi_device*,int ,int ,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sdev_evt_send_simple (struct scsi_device*,int ,int ) ;
 int set_media_not_present (struct scsi_disk*) ;

__attribute__((used)) static int sd_media_changed(struct gendisk *disk)
{
 struct scsi_disk *sdkp = scsi_disk(disk);
 struct scsi_device *sdp = sdkp->device;
 struct scsi_sense_hdr *sshdr = ((void*)0);
 int retval;

 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp, "sd_media_changed\n"));

 if (!sdp->removable)
  return 0;







 if (!scsi_device_online(sdp)) {
  set_media_not_present(sdkp);
  retval = 1;
  goto out;
 }
 retval = -ENODEV;

 if (scsi_block_when_processing_errors(sdp)) {
  sshdr = kzalloc(sizeof(*sshdr), GFP_KERNEL);
  retval = scsi_test_unit_ready(sdp, SD_TIMEOUT, SD_MAX_RETRIES,
           sshdr);
 }







 if (retval || (scsi_sense_valid(sshdr) &&

         sshdr->asc == 0x3a)) {
  set_media_not_present(sdkp);
  retval = 1;
  goto out;
 }






 sdkp->media_present = 1;

 retval = sdp->changed;
 sdp->changed = 0;
out:
 if (retval != sdkp->previous_state)
  sdev_evt_send_simple(sdp, SDEV_EVT_MEDIA_CHANGE, GFP_KERNEL);
 sdkp->previous_state = retval;
 kfree(sshdr);
 return retval;
}
