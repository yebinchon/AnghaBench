
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct block_device {int dummy; } ;
typedef int fmode_t ;
struct TYPE_2__ {int cd_info; } ;


 int cdrom_ioctl (int ,struct block_device*,int ,unsigned int,unsigned long) ;
 TYPE_1__ gd ;

__attribute__((used)) static int gdrom_bdops_ioctl(struct block_device *bdev, fmode_t mode,
 unsigned cmd, unsigned long arg)
{
 return cdrom_ioctl(gd.cd_info, bdev, mode, cmd, arg);
}
