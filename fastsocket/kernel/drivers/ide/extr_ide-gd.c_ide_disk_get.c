
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ide_disk_obj {int dev; int drive; } ;
struct gendisk {int dummy; } ;


 int get_device (int *) ;
 scalar_t__ ide_device_get (int ) ;
 int ide_disk_obj ;
 int ide_disk_ref_mutex ;
 struct ide_disk_obj* ide_drv_g (struct gendisk*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ide_disk_obj *ide_disk_get(struct gendisk *disk)
{
 struct ide_disk_obj *idkp = ((void*)0);

 mutex_lock(&ide_disk_ref_mutex);
 idkp = ide_drv_g(disk, ide_disk_obj);
 if (idkp) {
  if (ide_device_get(idkp->drive))
   idkp = ((void*)0);
  else
   get_device(&idkp->dev);
 }
 mutex_unlock(&ide_disk_ref_mutex);
 return idkp;
}
