
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_gem_ring_throttle (struct drm_device*,struct drm_file*) ;

int
i915_gem_throttle_ioctl(struct drm_device *dev, void *data,
   struct drm_file *file_priv)
{
 return i915_gem_ring_throttle(dev, file_priv);
}
