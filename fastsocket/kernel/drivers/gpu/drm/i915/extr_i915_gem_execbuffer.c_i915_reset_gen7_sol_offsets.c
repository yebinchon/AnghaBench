
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {struct intel_ring_buffer* ring; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int GEN7_SO_WRITE_OFFSET (int) ;
 int IS_GEN7 (struct drm_device*) ;
 int MI_LOAD_REGISTER_IMM (int) ;
 size_t RCS ;
 int intel_ring_advance (struct intel_ring_buffer*) ;
 int intel_ring_begin (struct intel_ring_buffer*,int) ;
 int intel_ring_emit (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static int
i915_reset_gen7_sol_offsets(struct drm_device *dev,
       struct intel_ring_buffer *ring)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int ret, i;

 if (!IS_GEN7(dev) || ring != &dev_priv->ring[RCS])
  return 0;

 ret = intel_ring_begin(ring, 4 * 3);
 if (ret)
  return ret;

 for (i = 0; i < 4; i++) {
  intel_ring_emit(ring, MI_LOAD_REGISTER_IMM(1));
  intel_ring_emit(ring, GEN7_SO_WRITE_OFFSET(i));
  intel_ring_emit(ring, 0);
 }

 intel_ring_advance(ring);

 return 0;
}
