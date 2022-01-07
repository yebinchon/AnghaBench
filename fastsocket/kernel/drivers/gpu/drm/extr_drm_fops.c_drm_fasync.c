
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int buf_async; } ;
struct TYPE_2__ {int device; struct drm_device* dev; } ;


 int DRM_DEBUG (char*,int,long) ;
 int fasync_helper (int,struct file*,int,int *) ;
 scalar_t__ old_encode_dev (int ) ;

int drm_fasync(int fd, struct file *filp, int on)
{
 struct drm_file *priv = filp->private_data;
 struct drm_device *dev = priv->minor->dev;

 DRM_DEBUG("fd = %d, device = 0x%lx\n", fd,
    (long)old_encode_dev(priv->minor->device));
 return fasync_helper(fd, filp, on, &dev->buf_async);
}
