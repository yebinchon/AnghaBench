
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct disk_info {int viocd_info; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct disk_info* private_data; } ;


 int cdrom_open (int *,struct block_device*,int ) ;

__attribute__((used)) static int viocd_blk_open(struct block_device *bdev, fmode_t mode)
{
 struct disk_info *di = bdev->bd_disk->private_data;
 return cdrom_open(&di->viocd_info, bdev, mode);
}
