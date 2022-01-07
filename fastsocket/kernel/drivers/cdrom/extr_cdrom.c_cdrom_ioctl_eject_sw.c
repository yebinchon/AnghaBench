
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int options; } ;


 int CDC_OPEN_TRAY ;
 int CDO_AUTO_CLOSE ;
 int CDO_AUTO_EJECT ;
 int CDROM_CAN (int ) ;
 int CD_DO_IOCTL ;
 int EBUSY ;
 int ENOSYS ;
 int cdinfo (int ,char*) ;
 scalar_t__ keeplocked ;

__attribute__((used)) static int cdrom_ioctl_eject_sw(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "entering CDROMEJECT_SW\n");

 if (!CDROM_CAN(CDC_OPEN_TRAY))
  return -ENOSYS;
 if (keeplocked)
  return -EBUSY;

 cdi->options &= ~(CDO_AUTO_CLOSE | CDO_AUTO_EJECT);
 if (arg)
  cdi->options |= CDO_AUTO_CLOSE | CDO_AUTO_EJECT;
 return 0;
}
