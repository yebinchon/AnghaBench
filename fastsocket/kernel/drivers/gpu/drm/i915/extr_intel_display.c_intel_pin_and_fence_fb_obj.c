
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {int dummy; } ;
struct TYPE_3__ {int interruptible; } ;
struct drm_i915_private {TYPE_1__ mm; } ;
struct drm_i915_gem_object {int tiling_mode; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;


 int BUG () ;
 int DRM_ERROR (char*) ;
 int EINVAL ;



 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 int IS_BROADWATER (struct drm_device*) ;
 int IS_CRESTLINE (struct drm_device*) ;
 int i915_gem_object_get_fence (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_fence (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin_to_display_plane (struct drm_i915_gem_object*,int,struct intel_ring_buffer*) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;

int
intel_pin_and_fence_fb_obj(struct drm_device *dev,
      struct drm_i915_gem_object *obj,
      struct intel_ring_buffer *pipelined)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 alignment;
 int ret;

 switch (obj->tiling_mode) {
 case 130:
  if (IS_BROADWATER(dev) || IS_CRESTLINE(dev))
   alignment = 128 * 1024;
  else if (INTEL_INFO(dev)->gen >= 4)
   alignment = 4 * 1024;
  else
   alignment = 64 * 1024;
  break;
 case 129:

  alignment = 0;
  break;
 case 128:

  DRM_ERROR("Y tiled not allowed for scan out buffers\n");
  return -EINVAL;
 default:
  BUG();
 }

 dev_priv->mm.interruptible = 0;
 ret = i915_gem_object_pin_to_display_plane(obj, alignment, pipelined);
 if (ret)
  goto err_interruptible;






 ret = i915_gem_object_get_fence(obj);
 if (ret)
  goto err_unpin;

 i915_gem_object_pin_fence(obj);

 dev_priv->mm.interruptible = 1;
 return 0;

err_unpin:
 i915_gem_object_unpin(obj);
err_interruptible:
 dev_priv->mm.interruptible = 1;
 return ret;
}
