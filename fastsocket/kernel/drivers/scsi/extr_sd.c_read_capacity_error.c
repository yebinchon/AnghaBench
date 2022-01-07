
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; } ;
struct scsi_disk {scalar_t__ capacity; } ;
struct scsi_device {int changed; scalar_t__ removable; } ;


 int DRIVER_SENSE ;
 int KERN_NOTICE ;
 scalar_t__ NOT_READY ;
 int driver_byte (int) ;
 int sd_print_result (struct scsi_disk*,int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static void read_capacity_error(struct scsi_disk *sdkp, struct scsi_device *sdp,
   struct scsi_sense_hdr *sshdr, int sense_valid,
   int the_result)
{
 sd_print_result(sdkp, the_result);
 if (driver_byte(the_result) & DRIVER_SENSE)
  sd_print_sense_hdr(sdkp, sshdr);
 else
  sd_printk(KERN_NOTICE, sdkp, "Sense not available.\n");





 if (sdp->removable &&
     sense_valid && sshdr->sense_key == NOT_READY)
  sdp->changed = 1;






 sdkp->capacity = 0;
}
