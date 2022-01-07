
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_mga_private_t ;


 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int mga_driver_fence_wait (struct drm_device*,int *) ;

__attribute__((used)) static int mga_wait_fence(struct drm_device *dev, void *data, struct drm_file *
file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 u32 *fence = data;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 DRM_DEBUG("pid=%d\n", DRM_CURRENTPID);

 mga_driver_fence_wait(dev, fence);
 return 0;
}
