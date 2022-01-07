
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gtt_space; } ;
struct TYPE_4__ {unsigned long total; unsigned long mappable_end; } ;
struct drm_i915_private {TYPE_1__ mm; TYPE_2__ gtt; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_ERROR (char*,int) ;
 scalar_t__ HAS_ALIASING_PPGTT (struct drm_device*) ;
 unsigned long I915_PPGTT_PD_ENTRIES ;
 unsigned long PAGE_SIZE ;
 int drm_mm_takedown (int *) ;
 int i915_gem_init_aliasing_ppgtt (struct drm_device*) ;
 int i915_gem_setup_global_gtt (struct drm_device*,int ,unsigned long,unsigned long) ;
 scalar_t__ intel_enable_ppgtt (struct drm_device*) ;

void i915_gem_init_global_gtt(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 unsigned long gtt_size, mappable_size;

 gtt_size = dev_priv->gtt.total;
 mappable_size = dev_priv->gtt.mappable_end;

 if (intel_enable_ppgtt(dev) && HAS_ALIASING_PPGTT(dev)) {
  int ret;


  gtt_size -= I915_PPGTT_PD_ENTRIES*PAGE_SIZE;

  i915_gem_setup_global_gtt(dev, 0, mappable_size, gtt_size);

  ret = i915_gem_init_aliasing_ppgtt(dev);
  if (!ret)
   return;

  DRM_ERROR("Aliased PPGTT setup failed %d\n", ret);
  drm_mm_takedown(&dev_priv->mm.gtt_space);
  gtt_size += I915_PPGTT_PD_ENTRIES*PAGE_SIZE;
 }
 i915_gem_setup_global_gtt(dev, 0, mappable_size, gtt_size);
}
