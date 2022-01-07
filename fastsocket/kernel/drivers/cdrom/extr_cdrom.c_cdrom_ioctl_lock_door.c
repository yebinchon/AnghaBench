
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {int use_count; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* lock_door ) (struct cdrom_device_info*,unsigned long) ;} ;


 int CAP_SYS_ADMIN ;
 int CDC_LOCK ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int EBUSY ;
 int EDRIVE_CANT_DO_THIS ;
 int capable (int ) ;
 int cdinfo (int ,char*,char*) ;
 int keeplocked ;
 int stub1 (struct cdrom_device_info*,unsigned long) ;

__attribute__((used)) static int cdrom_ioctl_lock_door(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "%socking door.\n", arg ? "L" : "Unl");

 if (!CDROM_CAN(CDC_LOCK))
  return -EDRIVE_CANT_DO_THIS;

 keeplocked = arg ? 1 : 0;





 if (cdi->use_count != 1 && !arg && !capable(CAP_SYS_ADMIN))
  return -EBUSY;
 return cdi->ops->lock_door(cdi, arg);
}
