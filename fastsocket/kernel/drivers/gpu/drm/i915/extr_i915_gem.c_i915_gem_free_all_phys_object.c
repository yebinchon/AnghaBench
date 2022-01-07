
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int I915_GEM_PHYS_CURSOR_0 ;
 int I915_MAX_PHYS_OBJECT ;
 int i915_gem_free_phys_object (struct drm_device*,int) ;

void i915_gem_free_all_phys_object(struct drm_device *dev)
{
 int i;

 for (i = I915_GEM_PHYS_CURSOR_0; i <= I915_MAX_PHYS_OBJECT; i++)
  i915_gem_free_phys_object(dev, i);
}
