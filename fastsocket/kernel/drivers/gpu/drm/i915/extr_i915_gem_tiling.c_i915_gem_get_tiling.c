
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_gem_object {int tiling_mode; int base; } ;
struct drm_i915_gem_get_tiling {int tiling_mode; scalar_t__ swizzle_mode; int handle; } ;
struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; TYPE_2__* dev_private; } ;
struct TYPE_3__ {scalar_t__ bit_6_swizzle_x; scalar_t__ bit_6_swizzle_y; } ;
struct TYPE_4__ {TYPE_1__ mm; } ;
typedef TYPE_2__ drm_i915_private_t ;


 int DRM_ERROR (char*) ;
 int ENOENT ;
 scalar_t__ I915_BIT_6_SWIZZLE_9 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_10_17 ;
 scalar_t__ I915_BIT_6_SWIZZLE_9_17 ;
 scalar_t__ I915_BIT_6_SWIZZLE_NONE ;



 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 int drm_gem_object_unreference (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

int
i915_gem_get_tiling(struct drm_device *dev, void *data,
     struct drm_file *file)
{
 struct drm_i915_gem_get_tiling *args = data;
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_gem_object *obj;

 obj = to_intel_bo(drm_gem_object_lookup(dev, file, args->handle));
 if (&obj->base == ((void*)0))
  return -ENOENT;

 mutex_lock(&dev->struct_mutex);

 args->tiling_mode = obj->tiling_mode;
 switch (obj->tiling_mode) {
 case 129:
  args->swizzle_mode = dev_priv->mm.bit_6_swizzle_x;
  break;
 case 128:
  args->swizzle_mode = dev_priv->mm.bit_6_swizzle_y;
  break;
 case 130:
  args->swizzle_mode = I915_BIT_6_SWIZZLE_NONE;
  break;
 default:
  DRM_ERROR("unknown tiling mode\n");
 }


 if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_17)
  args->swizzle_mode = I915_BIT_6_SWIZZLE_9;
 if (args->swizzle_mode == I915_BIT_6_SWIZZLE_9_10_17)
  args->swizzle_mode = I915_BIT_6_SWIZZLE_9_10;

 drm_gem_object_unreference(&obj->base);
 mutex_unlock(&dev->struct_mutex);

 return 0;
}
