
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* ops; } ;
struct block_device {int dummy; } ;
struct TYPE_2__ {int (* reset ) (struct cdrom_device_info*) ;} ;


 int CAP_SYS_ADMIN ;
 int CDC_RESET ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int EACCES ;
 int ENOSYS ;
 int capable (int ) ;
 int cdinfo (int ,char*) ;
 int invalidate_bdev (struct block_device*) ;
 int stub1 (struct cdrom_device_info*) ;

__attribute__((used)) static int cdrom_ioctl_reset(struct cdrom_device_info *cdi,
  struct block_device *bdev)
{
 cdinfo(CD_DO_IOCTL, "entering CDROM_RESET\n");

 if (!capable(CAP_SYS_ADMIN))
  return -EACCES;
 if (!CDROM_CAN(CDC_RESET))
  return -ENOSYS;
 invalidate_bdev(bdev);
 return cdi->ops->reset(cdi);
}
