
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* select_speed ) (struct cdrom_device_info*,unsigned long) ;} ;


 int CDC_SELECT_SPEED ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int ENOSYS ;
 int cdinfo (int ,char*) ;
 int stub1 (struct cdrom_device_info*,unsigned long) ;

__attribute__((used)) static int cdrom_ioctl_select_speed(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "entering CDROM_SELECT_SPEED\n");

 if (!CDROM_CAN(CDC_SELECT_SPEED))
  return -ENOSYS;
 return cdi->ops->select_speed(cdi, arg);
}
