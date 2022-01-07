
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mappable_end; } ;
struct drm_i915_private {TYPE_1__ gtt; } ;
struct drm_i915_gem_init {int gtt_start; int gtt_end; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;


 int DRIVER_MODESET ;
 int EINVAL ;
 int ENODEV ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 int PAGE_SIZE ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_gem_setup_global_gtt (struct drm_device*,int,int,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int
i915_gem_init_ioctl(struct drm_device *dev, void *data,
      struct drm_file *file)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_i915_gem_init *args = data;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 if (args->gtt_start >= args->gtt_end ||
     (args->gtt_end | args->gtt_start) & (PAGE_SIZE - 1))
  return -EINVAL;


 if (INTEL_INFO(dev)->gen >= 5)
  return -ENODEV;

 mutex_lock(&dev->struct_mutex);
 i915_gem_setup_global_gtt(dev, args->gtt_start, args->gtt_end,
      args->gtt_end);
 dev_priv->gtt.mappable_end = args->gtt_end;
 mutex_unlock(&dev->struct_mutex);

 return 0;
}
