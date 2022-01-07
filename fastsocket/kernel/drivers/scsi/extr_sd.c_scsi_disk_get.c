
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_disk {int dummy; } ;
struct gendisk {int dummy; } ;


 struct scsi_disk* __scsi_disk_get (struct gendisk*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int sd_ref_mutex ;

__attribute__((used)) static struct scsi_disk *scsi_disk_get(struct gendisk *disk)
{
 struct scsi_disk *sdkp;

 mutex_lock(&sd_ref_mutex);
 sdkp = __scsi_disk_get(disk);
 mutex_unlock(&sd_ref_mutex);
 return sdkp;
}
