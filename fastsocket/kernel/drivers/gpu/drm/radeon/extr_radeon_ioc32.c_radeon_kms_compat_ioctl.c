
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 unsigned int DRM_COMMAND_BASE ;
 unsigned int DRM_IOCTL_NR (unsigned int) ;
 long drm_compat_ioctl (struct file*,unsigned int,unsigned long) ;
 int drm_ioctl (struct file*,unsigned int,unsigned long) ;

long radeon_kms_compat_ioctl(struct file *filp, unsigned int cmd, unsigned long arg)
{
 unsigned int nr = DRM_IOCTL_NR(cmd);
 int ret;

 if (nr < DRM_COMMAND_BASE)
  return drm_compat_ioctl(filp, cmd, arg);

 ret = drm_ioctl(filp, cmd, arg);

 return ret;
}
