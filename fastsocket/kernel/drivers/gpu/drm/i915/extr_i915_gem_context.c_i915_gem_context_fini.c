
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_i915_private {TYPE_1__* ring; scalar_t__ hw_contexts_disabled; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int obj; } ;
struct TYPE_3__ {TYPE_2__* default_context; } ;


 size_t RCS ;
 int do_destroy (TYPE_2__*) ;
 int i915_gem_object_unpin (int ) ;
 int intel_gpu_reset (struct drm_device*) ;

void i915_gem_context_fini(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (dev_priv->hw_contexts_disabled)
  return;




 intel_gpu_reset(dev);

 i915_gem_object_unpin(dev_priv->ring[RCS].default_context->obj);

 do_destroy(dev_priv->ring[RCS].default_context);
}
