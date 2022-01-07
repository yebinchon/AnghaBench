
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_ring_buffer {int tail; int size; int (* write_tail ) (struct intel_ring_buffer*,int) ;TYPE_1__* dev; } ;
struct TYPE_4__ {int stop_rings; } ;
struct drm_i915_private {TYPE_2__ gpu_error; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 int intel_ring_flag (struct intel_ring_buffer*) ;
 int stub1 (struct intel_ring_buffer*,int) ;

void intel_ring_advance(struct intel_ring_buffer *ring)
{
 struct drm_i915_private *dev_priv = ring->dev->dev_private;

 ring->tail &= ring->size - 1;
 if (dev_priv->gpu_error.stop_rings & intel_ring_flag(ring))
  return;
 ring->write_tail(ring, ring->tail);
}
