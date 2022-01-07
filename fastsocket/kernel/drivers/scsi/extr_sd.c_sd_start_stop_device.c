
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {scalar_t__ start_stop_pwr_cond; } ;


 int DMA_NONE ;
 int DRIVER_SENSE ;
 int ENODEV ;
 int KERN_WARNING ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 unsigned char START_STOP ;
 int driver_byte (int) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,int *,int ,struct scsi_sense_hdr*,int ,int ,int *) ;
 int sd_print_result (struct scsi_disk*,int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static int sd_start_stop_device(struct scsi_disk *sdkp, int start)
{
 unsigned char cmd[6] = { START_STOP };
 struct scsi_sense_hdr sshdr;
 struct scsi_device *sdp = sdkp->device;
 int res;

 if (start)
  cmd[4] |= 1;

 if (sdp->start_stop_pwr_cond)
  cmd[4] |= start ? 1 << 4 : 3 << 4;

 if (!scsi_device_online(sdp))
  return -ENODEV;

 res = scsi_execute_req(sdp, cmd, DMA_NONE, ((void*)0), 0, &sshdr,
          SD_TIMEOUT, SD_MAX_RETRIES, ((void*)0));
 if (res) {
  sd_printk(KERN_WARNING, sdkp, "START_STOP FAILED\n");
  sd_print_result(sdkp, res);
  if (driver_byte(res) & DRIVER_SENSE)
   sd_print_sense_hdr(sdkp, &sshdr);
 }

 return res;
}
