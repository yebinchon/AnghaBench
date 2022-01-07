
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int capacity; TYPE_1__* disk; scalar_t__ DPOFUA; scalar_t__ WCE; scalar_t__ first_scan; scalar_t__ media_present; struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;
struct gendisk {int dummy; } ;
struct TYPE_2__ {int queue; } ;


 int GFP_KERNEL ;
 int KERN_INFO ;
 int KERN_WARNING ;
 unsigned int REQ_FLUSH ;
 unsigned int REQ_FUA ;
 int SCSI_LOG_HLQUEUE (int,int ) ;
 int SD_BUF_SIZE ;
 int blk_queue_flush (int ,unsigned int) ;
 int kfree (unsigned char*) ;
 unsigned char* kmalloc (int ,int ) ;
 int scsi_device_online (struct scsi_device*) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 int sd_read_app_tag_own (struct scsi_disk*,unsigned char*) ;
 int sd_read_block_characteristics (struct scsi_disk*) ;
 int sd_read_block_limits (struct scsi_disk*) ;
 int sd_read_block_provisioning (struct scsi_disk*) ;
 int sd_read_cache_type (struct scsi_disk*,unsigned char*) ;
 int sd_read_capacity (struct scsi_disk*,unsigned char*) ;
 int sd_read_write_protect_flag (struct scsi_disk*,unsigned char*) ;
 int sd_spinup_disk (struct scsi_disk*) ;
 scalar_t__ sd_try_extended_inquiry (struct scsi_device*) ;
 int set_capacity (struct gendisk*,int ) ;

__attribute__((used)) static int sd_revalidate_disk(struct gendisk *disk)
{
 struct scsi_disk *sdkp = scsi_disk(disk);
 struct scsi_device *sdp = sdkp->device;
 unsigned char *buffer;
 unsigned flush = 0;

 SCSI_LOG_HLQUEUE(3, sd_printk(KERN_INFO, sdkp,
          "sd_revalidate_disk\n"));





 if (!scsi_device_online(sdp))
  goto out;

 buffer = kmalloc(SD_BUF_SIZE, GFP_KERNEL);
 if (!buffer) {
  sd_printk(KERN_WARNING, sdkp, "sd_revalidate_disk: Memory "
     "allocation failure.\n");
  goto out;
 }

 sd_spinup_disk(sdkp);





 if (sdkp->media_present) {
  sd_read_capacity(sdkp, buffer);

  if (sd_try_extended_inquiry(sdp)) {
   sd_read_block_provisioning(sdkp);
   sd_read_block_limits(sdkp);
   sd_read_block_characteristics(sdkp);
  }

  sd_read_write_protect_flag(sdkp, buffer);
  sd_read_cache_type(sdkp, buffer);
  sd_read_app_tag_own(sdkp, buffer);
 }

 sdkp->first_scan = 0;





 if (sdkp->WCE) {
  flush |= REQ_FLUSH;
  if (sdkp->DPOFUA)
   flush |= REQ_FUA;
 }

 blk_queue_flush(sdkp->disk->queue, flush);

 set_capacity(disk, sdkp->capacity);
 kfree(buffer);

 out:
 return 0;
}
