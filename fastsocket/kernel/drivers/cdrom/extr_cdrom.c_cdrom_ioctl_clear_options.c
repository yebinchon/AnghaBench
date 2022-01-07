
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdrom_device_info {int options; } ;


 int CD_DO_IOCTL ;
 int cdinfo (int ,char*) ;

__attribute__((used)) static int cdrom_ioctl_clear_options(struct cdrom_device_info *cdi,
  unsigned long arg)
{
 cdinfo(CD_DO_IOCTL, "entering CDROM_CLEAR_OPTIONS\n");

 cdi->options &= ~(int) arg;
 return cdi->options;
}
