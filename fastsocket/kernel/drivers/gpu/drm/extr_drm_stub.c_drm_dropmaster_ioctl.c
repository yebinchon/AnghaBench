
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {scalar_t__ is_master; TYPE_1__* minor; } ;
struct drm_device {int struct_mutex; TYPE_2__* driver; } ;
struct TYPE_4__ {int (* master_drop ) (struct drm_device*,struct drm_file*,int) ;} ;
struct TYPE_3__ {int master; } ;


 int EINVAL ;
 int drm_master_put (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct drm_device*,struct drm_file*,int) ;

int drm_dropmaster_ioctl(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 if (!file_priv->is_master)
  return -EINVAL;

 if (!file_priv->minor->master)
  return -EINVAL;

 mutex_lock(&dev->struct_mutex);
 if (dev->driver->master_drop)
  dev->driver->master_drop(dev, file_priv, 0);
 drm_master_put(&file_priv->minor->master);
 file_priv->is_master = 0;
 mutex_unlock(&dev->struct_mutex);
 return 0;
}
