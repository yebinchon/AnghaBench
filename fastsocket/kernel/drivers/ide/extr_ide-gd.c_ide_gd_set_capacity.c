
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ide_disk_ops {unsigned long long (* set_capacity ) (TYPE_1__*,unsigned long long) ;} ;
struct ide_disk_obj {TYPE_1__* drive; } ;
struct gendisk {int dummy; } ;
struct TYPE_3__ {unsigned long long capacity64; struct ide_disk_ops* disk_ops; } ;
typedef TYPE_1__ ide_drive_t ;


 int ide_disk_obj ;
 struct ide_disk_obj* ide_drv_g (struct gendisk*,int ) ;
 unsigned long long stub1 (TYPE_1__*,unsigned long long) ;

__attribute__((used)) static unsigned long long ide_gd_set_capacity(struct gendisk *disk,
           unsigned long long capacity)
{
 struct ide_disk_obj *idkp = ide_drv_g(disk, ide_disk_obj);
 ide_drive_t *drive = idkp->drive;
 const struct ide_disk_ops *disk_ops = drive->disk_ops;

 if (disk_ops->set_capacity)
  return disk_ops->set_capacity(drive, capacity);

 return drive->capacity64;
}
