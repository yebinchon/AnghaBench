
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int size; int head; int tail; int last_retired_head; int space; struct drm_device* dev; int name; int (* write_tail ) (struct intel_ring_buffer*,int ) ;struct drm_i915_gem_object* obj; } ;
struct drm_i915_gem_object {scalar_t__ gtt_offset; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_i915_private_t ;


 int DRIVER_MODESET ;
 int DRM_DEBUG_KMS (char*,int ,int,int,int,scalar_t__) ;
 int DRM_ERROR (char*,int ,int,int,int,scalar_t__) ;
 int EIO ;
 scalar_t__ HAS_FORCE_WAKE (struct drm_device*) ;
 int HEAD_ADDR ;
 int I915_READ_CTL (struct intel_ring_buffer*) ;
 int I915_READ_HEAD (struct intel_ring_buffer*) ;
 scalar_t__ I915_READ_START (struct intel_ring_buffer*) ;
 int I915_READ_TAIL (struct intel_ring_buffer*) ;
 int I915_WRITE_CTL (struct intel_ring_buffer*,int) ;
 int I915_WRITE_HEAD (struct intel_ring_buffer*,int ) ;
 int I915_WRITE_START (struct intel_ring_buffer*,scalar_t__) ;
 int PAGE_SIZE ;
 int RING_NR_PAGES ;
 int RING_VALID ;
 int TAIL_ADDR ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int gen6_gt_force_wake_get (int *) ;
 int gen6_gt_force_wake_put (int *) ;
 int i915_kernel_lost_context (struct drm_device*) ;
 int ring_space (struct intel_ring_buffer*) ;
 int stub1 (struct intel_ring_buffer*,int ) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static int init_ring_common(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct drm_i915_gem_object *obj = ring->obj;
 int ret = 0;
 u32 head;

 if (HAS_FORCE_WAKE(dev))
  gen6_gt_force_wake_get(dev_priv);


 I915_WRITE_CTL(ring, 0);
 I915_WRITE_HEAD(ring, 0);
 ring->write_tail(ring, 0);

 head = I915_READ_HEAD(ring) & HEAD_ADDR;


 if (head != 0) {
  DRM_DEBUG_KMS("%s head not reset to zero "
         "ctl %08x head %08x tail %08x start %08x\n",
         ring->name,
         I915_READ_CTL(ring),
         I915_READ_HEAD(ring),
         I915_READ_TAIL(ring),
         I915_READ_START(ring));

  I915_WRITE_HEAD(ring, 0);

  if (I915_READ_HEAD(ring) & HEAD_ADDR) {
   DRM_ERROR("failed to set %s head to zero "
      "ctl %08x head %08x tail %08x start %08x\n",
      ring->name,
      I915_READ_CTL(ring),
      I915_READ_HEAD(ring),
      I915_READ_TAIL(ring),
      I915_READ_START(ring));
  }
 }





 I915_WRITE_START(ring, obj->gtt_offset);
 I915_WRITE_CTL(ring,
   ((ring->size - PAGE_SIZE) & RING_NR_PAGES)
   | RING_VALID);


 if (wait_for((I915_READ_CTL(ring) & RING_VALID) != 0 &&
       I915_READ_START(ring) == obj->gtt_offset &&
       (I915_READ_HEAD(ring) & HEAD_ADDR) == 0, 50)) {
  DRM_ERROR("%s initialization failed "
    "ctl %08x head %08x tail %08x start %08x\n",
    ring->name,
    I915_READ_CTL(ring),
    I915_READ_HEAD(ring),
    I915_READ_TAIL(ring),
    I915_READ_START(ring));
  ret = -EIO;
  goto out;
 }

 if (!drm_core_check_feature(ring->dev, DRIVER_MODESET))
  i915_kernel_lost_context(ring->dev);
 else {
  ring->head = I915_READ_HEAD(ring);
  ring->tail = I915_READ_TAIL(ring) & TAIL_ADDR;
  ring->space = ring_space(ring);
  ring->last_retired_head = -1;
 }

out:
 if (HAS_FORCE_WAKE(dev))
  gen6_gt_force_wake_put(dev_priv);

 return ret;
}
