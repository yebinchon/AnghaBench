
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct block_device {int dummy; } ;
typedef int ide_drive_t ;
typedef int fmode_t ;


 int EOPNOTSUPP ;
 int generic_ide_ioctl (int *,struct block_device*,unsigned int,unsigned long) ;
 int ide_disk_ioctl_settings ;
 int ide_setting_ioctl (int *,struct block_device*,unsigned int,unsigned long,int ) ;

int ide_disk_ioctl(ide_drive_t *drive, struct block_device *bdev, fmode_t mode,
     unsigned int cmd, unsigned long arg)
{
 int err;

 err = ide_setting_ioctl(drive, bdev, cmd, arg, ide_disk_ioctl_settings);
 if (err != -EOPNOTSUPP)
  return err;

 return generic_ide_ioctl(drive, bdev, cmd, arg);
}
