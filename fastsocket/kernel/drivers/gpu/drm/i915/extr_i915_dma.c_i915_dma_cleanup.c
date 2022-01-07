
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int struct_mutex; scalar_t__ irq_enabled; TYPE_1__* dev_private; } ;
struct TYPE_2__ {int * ring; } ;
typedef TYPE_1__ drm_i915_private_t ;


 scalar_t__ I915_NEED_GFX_HWS (struct drm_device*) ;
 int I915_NUM_RINGS ;
 int drm_irq_uninstall (struct drm_device*) ;
 int i915_free_hws (struct drm_device*) ;
 int intel_cleanup_ring_buffer (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_dma_cleanup(struct drm_device * dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int i;





 if (dev->irq_enabled)
  drm_irq_uninstall(dev);

 mutex_lock(&dev->struct_mutex);
 for (i = 0; i < I915_NUM_RINGS; i++)
  intel_cleanup_ring_buffer(&dev_priv->ring[i]);
 mutex_unlock(&dev->struct_mutex);


 if (I915_NEED_GFX_HWS(dev))
  i915_free_hws(dev);

 return 0;
}
