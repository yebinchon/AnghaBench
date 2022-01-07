
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int i915_gem_context_close (struct drm_device*,struct drm_file*) ;
 int i915_gem_release (struct drm_device*,struct drm_file*) ;

void i915_driver_preclose(struct drm_device * dev, struct drm_file *file_priv)
{
 i915_gem_context_close(dev, file_priv);
 i915_gem_release(dev, file_priv);
}
