
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int gmbus_wait_queue; } ;
struct drm_device {scalar_t__ dev_private; } ;
typedef struct drm_i915_private drm_i915_private_t ;


 int wake_up_all (int *) ;

__attribute__((used)) static void dp_aux_irq_handler(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = (drm_i915_private_t *) dev->dev_private;

 wake_up_all(&dev_priv->gmbus_wait_queue);
}
