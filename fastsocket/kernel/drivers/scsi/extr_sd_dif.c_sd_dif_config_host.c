
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
typedef int u16 ;
struct scsi_disk {scalar_t__ protection_type; scalar_t__ ATO; struct scsi_device* device; struct gendisk* disk; } ;
struct scsi_device {int host; } ;
struct gendisk {TYPE_1__* integrity; } ;
struct TYPE_2__ {int name; int tag_size; } ;


 int KERN_NOTICE ;
 scalar_t__ SD_DIF_TYPE3_PROTECTION ;
 int SHOST_DIX_GUARD_IP ;
 int blk_integrity_register (struct gendisk*,int *) ;
 int dif_type1_integrity_crc ;
 int dif_type1_integrity_ip ;
 int dif_type3_integrity_crc ;
 int dif_type3_integrity_ip ;
 int scsi_host_dif_capable (int ,scalar_t__) ;
 int scsi_host_dix_capable (int ,scalar_t__) ;
 int scsi_host_get_guard (int ) ;
 int sd_printk (int ,struct scsi_disk*,char*,int) ;

void sd_dif_config_host(struct scsi_disk *sdkp)
{
 struct scsi_device *sdp = sdkp->device;
 struct gendisk *disk = sdkp->disk;
 u8 type = sdkp->protection_type;
 int dif, dix;

 dif = scsi_host_dif_capable(sdp->host, type);
 dix = scsi_host_dix_capable(sdp->host, type);

 if (!dix && scsi_host_dix_capable(sdp->host, 0)) {
  dif = 0; dix = 1;
 }

 if (!dix)
  return;


 if (scsi_host_get_guard(sdkp->device->host) & SHOST_DIX_GUARD_IP)
  if (type == SD_DIF_TYPE3_PROTECTION)
   blk_integrity_register(disk, &dif_type3_integrity_ip);
  else
   blk_integrity_register(disk, &dif_type1_integrity_ip);
 else
  if (type == SD_DIF_TYPE3_PROTECTION)
   blk_integrity_register(disk, &dif_type3_integrity_crc);
  else
   blk_integrity_register(disk, &dif_type1_integrity_crc);

 sd_printk(KERN_NOTICE, sdkp,
    "Enabling DIX %s protection\n", disk->integrity->name);


 if (dif && type && sdkp->ATO) {
  if (type == SD_DIF_TYPE3_PROTECTION)
   disk->integrity->tag_size = sizeof(u16) + sizeof(u32);
  else
   disk->integrity->tag_size = sizeof(u16);

  sd_printk(KERN_NOTICE, sdkp, "DIF application tag size %u\n",
     disk->integrity->tag_size);
 }
}
