
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_disk {TYPE_1__* device; int index; struct gendisk* disk; } ;
struct gendisk {int * private_data; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int sdev_gendev; } ;


 int ida_remove (int *,int ) ;
 int kfree (struct scsi_disk*) ;
 int put_device (int *) ;
 int put_disk (struct gendisk*) ;
 int sd_index_ida ;
 int sd_index_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct scsi_disk* to_scsi_disk (struct device*) ;

__attribute__((used)) static void scsi_disk_release(struct device *dev)
{
 struct scsi_disk *sdkp = to_scsi_disk(dev);
 struct gendisk *disk = sdkp->disk;

 spin_lock(&sd_index_lock);
 ida_remove(&sd_index_ida, sdkp->index);
 spin_unlock(&sd_index_lock);

 disk->private_data = ((void*)0);
 put_disk(disk);
 put_device(&sdkp->device->sdev_gendev);

 kfree(sdkp);
}
