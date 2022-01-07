
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ide_disk_obj {int dev; int driver; struct gendisk* disk; } ;
struct gendisk {int dummy; } ;
struct TYPE_7__ {TYPE_1__* disk_ops; struct ide_disk_obj* driver_data; } ;
typedef TYPE_2__ ide_drive_t ;
struct TYPE_6__ {int (* flush ) (TYPE_2__*) ;} ;


 int del_gendisk (struct gendisk*) ;
 int device_del (int *) ;
 int ide_disk_ref_mutex ;
 int ide_proc_unregister_driver (TYPE_2__*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int put_device (int *) ;
 int stub1 (TYPE_2__*) ;

__attribute__((used)) static void ide_gd_remove(ide_drive_t *drive)
{
 struct ide_disk_obj *idkp = drive->driver_data;
 struct gendisk *g = idkp->disk;

 ide_proc_unregister_driver(drive, idkp->driver);
 device_del(&idkp->dev);
 del_gendisk(g);
 drive->disk_ops->flush(drive);

 mutex_lock(&ide_disk_ref_mutex);
 put_device(&idkp->dev);
 mutex_unlock(&ide_disk_ref_mutex);
}
