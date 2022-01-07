
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcd_unit {int info; } ;
struct block_device {TYPE_1__* bd_disk; } ;
typedef int fmode_t ;
struct TYPE_2__ {struct pcd_unit* private_data; } ;


 int cdrom_ioctl (int *,struct block_device*,int ,unsigned int,unsigned long) ;

__attribute__((used)) static int pcd_block_ioctl(struct block_device *bdev, fmode_t mode,
    unsigned cmd, unsigned long arg)
{
 struct pcd_unit *cd = bdev->bd_disk->private_data;
 return cdrom_ioctl(&cd->info, bdev, mode, cmd, arg);
}
