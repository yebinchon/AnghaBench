
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_destroy_dumb {int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* dumb_destroy ) (struct drm_file*,struct drm_device*,int ) ;} ;


 int ENOSYS ;
 int stub1 (struct drm_file*,struct drm_device*,int ) ;

int drm_mode_destroy_dumb_ioctl(struct drm_device *dev,
    void *data, struct drm_file *file_priv)
{
 struct drm_mode_destroy_dumb *args = data;

 if (!dev->driver->dumb_destroy)
  return -ENOSYS;

 return dev->driver->dumb_destroy(file_priv, dev, args->handle);
}
