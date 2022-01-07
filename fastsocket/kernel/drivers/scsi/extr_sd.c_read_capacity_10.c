
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_sense_hdr {scalar_t__ sense_key; int asc; int ascq; } ;
struct scsi_disk {int capacity; unsigned int physical_block_size; } ;
struct scsi_device {int dummy; } ;
typedef int sector_t ;


 int DMA_FROM_DEVICE ;
 int EINVAL ;
 int ENODEV ;
 int EOVERFLOW ;
 int KERN_ERR ;
 int KERN_NOTICE ;
 unsigned char READ_CAPACITY ;
 int READ_CAPACITY_RETRIES_ON_RESET ;
 int SD_MAX_RETRIES ;
 int SD_TIMEOUT ;
 scalar_t__ UNIT_ATTENTION ;
 void* get_unaligned_be32 (unsigned char*) ;
 scalar_t__ media_not_present (struct scsi_disk*,struct scsi_sense_hdr*) ;
 int memset (unsigned char*,int ,int) ;
 int read_capacity_error (struct scsi_disk*,struct scsi_device*,struct scsi_sense_hdr*,int,int) ;
 int scsi_execute_req (struct scsi_device*,unsigned char*,int ,unsigned char*,int,struct scsi_sense_hdr*,int ,int ,int *) ;
 int scsi_sense_valid (struct scsi_sense_hdr*) ;
 int sd_printk (int ,struct scsi_disk*,char*) ;

__attribute__((used)) static int read_capacity_10(struct scsi_disk *sdkp, struct scsi_device *sdp,
      unsigned char *buffer)
{
 unsigned char cmd[16];
 struct scsi_sense_hdr sshdr;
 int sense_valid = 0;
 int the_result;
 int retries = 3, reset_retries = READ_CAPACITY_RETRIES_ON_RESET;
 sector_t lba;
 unsigned sector_size;

 do {
  cmd[0] = READ_CAPACITY;
  memset(&cmd[1], 0, 9);
  memset(buffer, 0, 8);

  the_result = scsi_execute_req(sdp, cmd, DMA_FROM_DEVICE,
     buffer, 8, &sshdr,
     SD_TIMEOUT, SD_MAX_RETRIES, ((void*)0));

  if (media_not_present(sdkp, &sshdr))
   return -ENODEV;

  if (the_result) {
   sense_valid = scsi_sense_valid(&sshdr);
   if (sense_valid &&
       sshdr.sense_key == UNIT_ATTENTION &&
       sshdr.asc == 0x29 && sshdr.ascq == 0x00)


    if (--reset_retries > 0)
     continue;
  }
  retries--;

 } while (the_result && retries);

 if (the_result) {
  sd_printk(KERN_NOTICE, sdkp, "READ CAPACITY failed\n");
  read_capacity_error(sdkp, sdp, &sshdr, sense_valid, the_result);
  return -EINVAL;
 }

 sector_size = get_unaligned_be32(&buffer[4]);
 lba = get_unaligned_be32(&buffer[0]);

 if ((sizeof(sdkp->capacity) == 4) && (lba == 0xffffffff)) {
  sd_printk(KERN_ERR, sdkp, "Too big for this kernel. Use a "
   "kernel compiled with support for large block "
   "devices.\n");
  sdkp->capacity = 0;
  return -EOVERFLOW;
 }

 sdkp->capacity = lba + 1;
 sdkp->physical_block_size = sector_size;
 return sector_size;
}
