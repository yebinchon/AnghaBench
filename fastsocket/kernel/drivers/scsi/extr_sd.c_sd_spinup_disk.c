
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {TYPE_1__* device; } ;
struct TYPE_2__ {scalar_t__ start_stop_pwr_cond; scalar_t__ no_start_on_add; } ;


 int DMA_NONE ;
 int DRIVER_SENSE ;
 int HZ ;
 int KERN_NOTICE ;
 scalar_t__ NOT_READY ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 unsigned char START_STOP ;
 unsigned char TEST_UNIT_READY ;
 scalar_t__ UNIT_ATTENTION ;
 int driver_byte (unsigned int) ;
 int jiffies ;
 scalar_t__ media_not_present (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int memset (void*,int ,int) ;
 int msleep (int) ;
 int printk (char*) ;
 unsigned int scsi_execute_req (TYPE_1__*,unsigned char*,int ,int *,int ,struct scsi_sense_hdr*,int ,int ,int *) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 scalar_t__ scsi_status_is_good (unsigned int) ;
 int sd_print_result (struct scsi_disk*,unsigned int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;
 scalar_t__ time_before_eq (int,unsigned long) ;

__attribute__((used)) static void
sd_spinup_disk(struct scsi_disk *sdkp)
{
 unsigned char cmd[10];
 unsigned long spintime_expire = 0;
 int retries, spintime;
 unsigned int the_result;
 struct scsi_sense_hdr sshdr;
 int sense_valid = 0;

 spintime = 0;



 do {
  retries = 0;

  do {
   cmd[0] = TEST_UNIT_READY;
   memset((void *) &cmd[1], 0, 9);

   the_result = scsi_execute_req(sdkp->device, cmd,
            DMA_NONE, ((void*)0), 0,
            &sshdr, SD_TIMEOUT,
            SD_MAX_RETRIES, ((void*)0));






   if (media_not_present(sdkp, &sshdr))
    return;

   if (the_result)
    sense_valid = scsi_sense_valid(&sshdr);
   retries++;
  } while (retries < 3 &&
    (!scsi_status_is_good(the_result) ||
     ((driver_byte(the_result) & DRIVER_SENSE) &&
     sense_valid && sshdr.sense_key == UNIT_ATTENTION)));

  if ((driver_byte(the_result) & DRIVER_SENSE) == 0) {


   if(!spintime && !scsi_status_is_good(the_result)) {
    sd_printk(KERN_NOTICE, sdkp, "Unit Not Ready\n");
    sd_print_result(sdkp, the_result);
   }
   break;
  }




  if (sdkp->device->no_start_on_add)
   break;

  if (sense_valid && sshdr.sense_key == NOT_READY) {
   if (sshdr.asc == 4 && sshdr.ascq == 3)
    break;
   if (sshdr.asc == 4 && sshdr.ascq == 0xb)
    break;
   if (sshdr.asc == 4 && sshdr.ascq == 0xc)
    break;



   if (!spintime) {
    sd_printk(KERN_NOTICE, sdkp, "Spinning up disk...");
    cmd[0] = START_STOP;
    cmd[1] = 1;
    memset((void *) &cmd[2], 0, 8);
    cmd[4] = 1;
    if (sdkp->device->start_stop_pwr_cond)
     cmd[4] |= 1 << 4;
    scsi_execute_req(sdkp->device, cmd, DMA_NONE,
       ((void*)0), 0, &sshdr,
       SD_TIMEOUT, SD_MAX_RETRIES,
       ((void*)0));
    spintime_expire = jiffies + 100 * HZ;
    spintime = 1;
   }

   msleep(1000);
   printk(".");






  } else if (sense_valid &&
    sshdr.sense_key == UNIT_ATTENTION &&
    sshdr.asc == 0x28) {
   if (!spintime) {
    spintime_expire = jiffies + 5 * HZ;
    spintime = 1;
   }

   msleep(1000);
  } else {


   if(!spintime) {
    sd_printk(KERN_NOTICE, sdkp, "Unit Not Ready\n");
    sd_print_sense_hdr(sdkp, &sshdr);
   }
   break;
  }

 } while (spintime && time_before_eq(jiffies, spintime_expire));

 if (spintime) {
  if (scsi_status_is_good(the_result))
   printk("ready\n");
  else
   printk("not responding...\n");
 }
}
