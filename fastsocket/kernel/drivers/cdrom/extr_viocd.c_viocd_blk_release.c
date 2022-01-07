
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gendisk {struct disk_info* private_data; } ;
struct disk_info {int viocd_info; } ;
typedef int fmode_t ;


 int cdrom_release (int *,int ) ;

__attribute__((used)) static int viocd_blk_release(struct gendisk *disk, fmode_t mode)
{
 struct disk_info *di = disk->private_data;
 cdrom_release(&di->viocd_info, mode);
 return 0;
}
