
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {int dummy; } ;
struct scsi_disk {struct scsi_device* device; } ;
struct scsi_device {int dummy; } ;


 int DMA_NONE ;
 int DRIVER_SENSE ;
 int EIO ;
 int ENODEV ;
 int SD_FLUSH_TIMEOUT ;
 int SD_MAX_RETRIES ;
 unsigned char SYNCHRONIZE_CACHE ;
 int driver_byte (int) ;
 int scsi_device_online (struct scsi_device*) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,int *,int ,struct scsi_sense_hdr*,int ,int ,int *) ;
 int sd_print_result (struct scsi_disk*,int) ;
 int sd_print_sense_hdr (struct scsi_disk*,struct scsi_sense_hdr*) ;

__attribute__((used)) static int sd_sync_cache(struct scsi_disk *sdkp)
{
 int retries, res;
 struct scsi_device *sdp = sdkp->device;
 struct scsi_sense_hdr sshdr;

 if (!scsi_device_online(sdp))
  return -ENODEV;


 for (retries = 3; retries > 0; --retries) {
  unsigned char cmd[10] = { 0 };

  cmd[0] = SYNCHRONIZE_CACHE;




  res = scsi_execute_req(sdp, cmd, DMA_NONE, ((void*)0), 0, &sshdr,
           SD_FLUSH_TIMEOUT, SD_MAX_RETRIES, ((void*)0));
  if (res == 0)
   break;
 }

 if (res) {
  sd_print_result(sdkp, res);
  if (driver_byte(res) & DRIVER_SENSE)
   sd_print_sense_hdr(sdkp, &sshdr);
 }

 if (res)
  return -EIO;
 return 0;
}
