
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdrom_device_info {unsigned int capacity; } ;
struct cdrom_changer_info {TYPE_1__* slots; } ;
struct TYPE_2__ {int change; } ;


 int CDC_MEDIA_CHANGED ;
 int CDC_SELECT_DISC ;
 int CDROM_CAN (int ) ;
 unsigned long CDSL_CURRENT ;
 int CD_DO_IOCTL ;
 int EINVAL ;
 int ENOMEM ;
 int ENOSYS ;
 int GFP_KERNEL ;
 int cdinfo (int ,char*) ;
 int cdrom_read_mech_status (struct cdrom_device_info*,struct cdrom_changer_info*) ;
 int kfree (struct cdrom_changer_info*) ;
 struct cdrom_changer_info* kmalloc (int,int ) ;
 int media_changed (struct cdrom_device_info*,int) ;

__attribute__((used)) static int cdrom_ioctl_media_changed(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 struct cdrom_changer_info *info;
 int ret;

 cdinfo(CD_DO_IOCTL, "entering CDROM_MEDIA_CHANGED\n");

 if (!CDROM_CAN(CDC_MEDIA_CHANGED))
  return -ENOSYS;


 if (!CDROM_CAN(CDC_SELECT_DISC) || arg == CDSL_CURRENT)
  return media_changed(cdi, 1);

 if ((unsigned int)arg >= cdi->capacity)
  return -EINVAL;

 info = kmalloc(sizeof(*info), GFP_KERNEL);
 if (!info)
  return -ENOMEM;

 ret = cdrom_read_mech_status(cdi, info);
 if (!ret)
  ret = info->slots[arg].change;
 kfree(info);
 return ret;
}
