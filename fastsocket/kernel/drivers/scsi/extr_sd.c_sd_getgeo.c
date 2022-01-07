
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {int capacity; struct scsi_device* device; } ;
struct scsi_device {struct Scsi_Host* host; } ;
struct hd_geometry {int heads; int sectors; int cylinders; } ;
struct block_device {int bd_disk; } ;
struct Scsi_Host {TYPE_1__* hostt; } ;
struct TYPE_2__ {int (* bios_param ) (struct scsi_device*,struct block_device*,int,int*) ;} ;


 struct scsi_disk* scsi_disk (int ) ;
 int scsicam_bios_param (struct block_device*,int,int*) ;
 int stub1 (struct scsi_device*,struct block_device*,int,int*) ;

__attribute__((used)) static int sd_getgeo(struct block_device *bdev, struct hd_geometry *geo)
{
 struct scsi_disk *sdkp = scsi_disk(bdev->bd_disk);
 struct scsi_device *sdp = sdkp->device;
 struct Scsi_Host *host = sdp->host;
 int diskinfo[4];


        diskinfo[0] = 0x40;
        diskinfo[1] = 0x20;
        diskinfo[2] = sdkp->capacity >> 11;


 if (host->hostt->bios_param)
  host->hostt->bios_param(sdp, bdev, sdkp->capacity, diskinfo);
 else
  scsicam_bios_param(bdev, sdkp->capacity, diskinfo);

 geo->heads = diskinfo[0];
 geo->sectors = diskinfo[1];
 geo->cylinders = diskinfo[2];
 return 0;
}
