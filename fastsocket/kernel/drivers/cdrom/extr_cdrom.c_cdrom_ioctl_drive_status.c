
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int capacity; TYPE_1__* ops; } ;
struct TYPE_2__ {int capability; int (* drive_status ) (struct cdrom_device_info*,unsigned long) ;} ;


 int CDC_DRIVE_STATUS ;
 int CDC_SELECT_DISC ;
 int CDROM_CAN (int ) ;
 unsigned long CDSL_CURRENT ;
 unsigned long CDSL_NONE ;
 int CD_DO_IOCTL ;
 int EINVAL ;
 int ENOSYS ;
 int cdinfo (int ,char*) ;
 int cdrom_slot_status (struct cdrom_device_info*,unsigned long) ;
 int stub1 (struct cdrom_device_info*,unsigned long) ;

__attribute__((used)) static int cdrom_ioctl_drive_status(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "entering CDROM_DRIVE_STATUS\n");

 if (!(cdi->ops->capability & CDC_DRIVE_STATUS))
  return -ENOSYS;
 if (!CDROM_CAN(CDC_SELECT_DISC) ||
     (arg == CDSL_CURRENT || arg == CDSL_NONE))
  return cdi->ops->drive_status(cdi, CDSL_CURRENT);
 if (((int)arg >= cdi->capacity))
  return -EINVAL;
 return cdrom_slot_status(cdi, arg);
}
