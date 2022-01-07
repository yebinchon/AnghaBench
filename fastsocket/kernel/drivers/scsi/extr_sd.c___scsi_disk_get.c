
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dev; int device; } ;
struct gendisk {scalar_t__ private_data; } ;


 int get_device (int *) ;
 scalar_t__ scsi_device_get (int ) ;
 struct scsi_disk* scsi_disk (struct gendisk*) ;

__attribute__((used)) static struct scsi_disk *__scsi_disk_get(struct gendisk *disk)
{
 struct scsi_disk *sdkp = ((void*)0);

 if (disk->private_data) {
  sdkp = scsi_disk(disk);
  if (scsi_device_get(sdkp->device) == 0)
   get_device(&sdkp->dev);
  else
   sdkp = ((void*)0);
 }
 return sdkp;
}
