
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct file {struct drm_file* private_data; } ;
struct drm_file {TYPE_1__* minor; } ;
struct drm_device {int struct_mutex; } ;
struct TYPE_2__ {struct drm_device* dev; } ;


 int ENODEV ;
 scalar_t__ drm_device_is_unplugged (struct drm_device*) ;
 int drm_mmap_locked (struct file*,struct vm_area_struct*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int drm_mmap(struct file *filp, struct vm_area_struct *vma)
{
 struct drm_file *priv = filp->private_data;
 struct drm_device *dev = priv->minor->dev;
 int ret;

 if (drm_device_is_unplugged(dev))
  return -ENODEV;

 mutex_lock(&dev->struct_mutex);
 ret = drm_mmap_locked(filp, vma);
 mutex_unlock(&dev->struct_mutex);

 return ret;
}
