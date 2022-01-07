
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {int irq_queue; int (* get_seqno ) (struct intel_ring_buffer*,int) ;int * obj; } ;
struct TYPE_2__ {int hangcheck_timer; scalar_t__ hangcheck_count; } ;
struct drm_i915_private {TYPE_1__ gpu_error; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 scalar_t__ DRM_I915_HANGCHECK_JIFFIES ;
 scalar_t__ i915_enable_hangcheck ;
 scalar_t__ jiffies ;
 int mod_timer (int *,int ) ;
 int round_jiffies_up (scalar_t__) ;
 int stub1 (struct intel_ring_buffer*,int) ;
 int trace_i915_gem_request_complete (struct intel_ring_buffer*,int ) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void notify_ring(struct drm_device *dev,
   struct intel_ring_buffer *ring)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 if (ring->obj == ((void*)0))
  return;

 trace_i915_gem_request_complete(ring, ring->get_seqno(ring, 0));

 wake_up_all(&ring->irq_queue);
 if (i915_enable_hangcheck) {
  dev_priv->gpu_error.hangcheck_count = 0;
  mod_timer(&dev_priv->gpu_error.hangcheck_timer,
     round_jiffies_up(jiffies + DRM_I915_HANGCHECK_JIFFIES));
 }
}
