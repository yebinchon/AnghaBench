
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {int dummy; } ;
struct cdrom_info {int devinfo; } ;


 int cdrom_info ;
 int cdrom_media_changed (int *) ;
 struct cdrom_info* ide_drv_g (struct gendisk*,int ) ;

__attribute__((used)) static int idecd_media_changed(struct gendisk *disk)
{
 struct cdrom_info *info = ide_drv_g(disk, cdrom_info);
 return cdrom_media_changed(&info->devinfo);
}
