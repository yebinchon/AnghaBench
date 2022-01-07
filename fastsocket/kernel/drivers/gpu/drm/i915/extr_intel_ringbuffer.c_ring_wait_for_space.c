
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct intel_ring_buffer {int space; int head; struct drm_device* dev; } ;
struct TYPE_8__ {int interruptible; } ;
struct drm_i915_private {TYPE_4__ mm; int gpu_error; } ;
struct drm_i915_master_private {TYPE_3__* sarea_priv; } ;
struct drm_device {TYPE_2__* primary; struct drm_i915_private* dev_private; } ;
struct TYPE_7__ {int perf_boxes; } ;
struct TYPE_6__ {TYPE_1__* master; } ;
struct TYPE_5__ {struct drm_i915_master_private* driver_priv; } ;


 int EBUSY ;
 int ENOSPC ;
 int HZ ;
 int I915_BOX_WAIT ;
 int I915_READ_HEAD (struct intel_ring_buffer*) ;
 int i915_gem_check_wedge (int *,int ) ;
 int intel_ring_wait_request (struct intel_ring_buffer*,int) ;
 int jiffies ;
 int msleep (int) ;
 int ring_space (struct intel_ring_buffer*) ;
 int time_after (int,unsigned long) ;
 int trace_i915_ring_wait_begin (struct intel_ring_buffer*) ;
 int trace_i915_ring_wait_end (struct intel_ring_buffer*) ;

__attribute__((used)) static int ring_wait_for_space(struct intel_ring_buffer *ring, int n)
{
 struct drm_device *dev = ring->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 unsigned long end;
 int ret;

 ret = intel_ring_wait_request(ring, n);
 if (ret != -ENOSPC)
  return ret;

 trace_i915_ring_wait_begin(ring);





 end = jiffies + 60 * HZ;

 do {
  ring->head = I915_READ_HEAD(ring);
  ring->space = ring_space(ring);
  if (ring->space >= n) {
   trace_i915_ring_wait_end(ring);
   return 0;
  }

  if (dev->primary->master) {
   struct drm_i915_master_private *master_priv = dev->primary->master->driver_priv;
   if (master_priv->sarea_priv)
    master_priv->sarea_priv->perf_boxes |= I915_BOX_WAIT;
  }

  msleep(1);

  ret = i915_gem_check_wedge(&dev_priv->gpu_error,
        dev_priv->mm.interruptible);
  if (ret)
   return ret;
 } while (!time_after(jiffies, end));
 trace_i915_ring_wait_end(ring);
 return -EBUSY;
}
