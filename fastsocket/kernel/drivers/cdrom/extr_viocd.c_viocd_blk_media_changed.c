
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_info* private_data; } ;
struct disk_info {int viocd_info; } ;


 int cdrom_media_changed (int *) ;

__attribute__((used)) static int viocd_blk_media_changed(struct gendisk *disk)
{
 struct disk_info *di = disk->private_data;
 return cdrom_media_changed(&di->viocd_info);
}
