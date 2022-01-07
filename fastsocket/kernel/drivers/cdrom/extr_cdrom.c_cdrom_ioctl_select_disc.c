
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int capacity; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* select_disc ) (struct cdrom_device_info*,unsigned long) ;} ;


 int CDC_SELECT_DISC ;
 int CDROM_CAN (int ) ;
 unsigned long CDSL_CURRENT ;
 unsigned long CDSL_NONE ;
 int CD_CHANGER ;
 int CD_DO_IOCTL ;
 int EINVAL ;
 int ENOSYS ;
 int cdinfo (int ,char*) ;
 int cdrom_select_disc (struct cdrom_device_info*,unsigned long) ;
 int stub1 (struct cdrom_device_info*,unsigned long) ;

__attribute__((used)) static int cdrom_ioctl_select_disc(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "entering CDROM_SELECT_DISC\n");

 if (!CDROM_CAN(CDC_SELECT_DISC))
  return -ENOSYS;

 if (arg != CDSL_CURRENT && arg != CDSL_NONE) {
  if ((int)arg >= cdi->capacity)
   return -EINVAL;
 }






 if (cdi->ops->select_disc)
  return cdi->ops->select_disc(cdi, arg);

 cdinfo(CD_CHANGER, "Using generic cdrom_select_disc()\n");
 return cdrom_select_disc(cdi, arg);
}
