
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_info {int dev; int * drive; } ;
typedef int ide_drive_t ;


 int ide_device_put (int *) ;
 int idecd_ref_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;

__attribute__((used)) static void ide_cd_put(struct cdrom_info *cd)
{
 ide_drive_t *drive = cd->drive;

 mutex_lock(&idecd_ref_mutex);
 put_device(&cd->dev);
 ide_device_put(drive);
 mutex_unlock(&idecd_ref_mutex);
}
