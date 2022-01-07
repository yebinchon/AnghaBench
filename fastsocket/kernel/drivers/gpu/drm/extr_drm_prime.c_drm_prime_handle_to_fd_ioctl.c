
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_prime_handle {int flags; int fd; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* driver; } ;
struct TYPE_2__ {int (* prime_handle_to_fd ) (struct drm_device*,struct drm_file*,int ,int,int *) ;} ;


 int DRIVER_PRIME ;
 int DRM_CLOEXEC ;
 int EINVAL ;
 int ENOSYS ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int stub1 (struct drm_device*,struct drm_file*,int ,int,int *) ;

int drm_prime_handle_to_fd_ioctl(struct drm_device *dev, void *data,
     struct drm_file *file_priv)
{
 struct drm_prime_handle *args = data;
 uint32_t flags;

 if (!drm_core_check_feature(dev, DRIVER_PRIME))
  return -EINVAL;

 if (!dev->driver->prime_handle_to_fd)
  return -ENOSYS;


 if (args->flags & ~DRM_CLOEXEC)
  return -EINVAL;


 flags = args->flags & DRM_CLOEXEC;

 return dev->driver->prime_handle_to_fd(dev, file_priv,
   args->handle, flags, &args->fd);
}
