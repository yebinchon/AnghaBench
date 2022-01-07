
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_disk_obj {int dev; int * drive; } ;
typedef int ide_drive_t ;


 int ide_device_put (int *) ;
 int ide_disk_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ide_disk_put(struct ide_disk_obj *idkp)
{
 ide_drive_t *drive = idkp->drive;

 mutex_lock(&ide_disk_ref_mutex);
 put_device(&idkp->dev);
 ide_device_put(drive);
 mutex_unlock(&ide_disk_ref_mutex);
}
