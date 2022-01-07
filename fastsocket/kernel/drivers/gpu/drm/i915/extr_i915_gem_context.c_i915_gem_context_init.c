
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_i915_private {int hw_contexts_disabled; int hw_context_size; TYPE_1__* ring; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {scalar_t__ default_context; } ;


 int DRM_DEBUG_DRIVER (char*) ;
 int HAS_HW_CONTEXTS (struct drm_device*) ;
 size_t RCS ;
 scalar_t__ create_default_context (struct drm_i915_private*) ;
 int get_context_size (struct drm_device*) ;
 int round_up (int ,int) ;

void i915_gem_context_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (!HAS_HW_CONTEXTS(dev)) {
  dev_priv->hw_contexts_disabled = 1;
  return;
 }


 if (dev_priv->hw_contexts_disabled ||
     dev_priv->ring[RCS].default_context)
  return;

 dev_priv->hw_context_size = round_up(get_context_size(dev), 4096);

 if (dev_priv->hw_context_size > (1<<20)) {
  dev_priv->hw_contexts_disabled = 1;
  return;
 }

 if (create_default_context(dev_priv)) {
  dev_priv->hw_contexts_disabled = 1;
  return;
 }

 DRM_DEBUG_DRIVER("HW context support initialized\n");
}
