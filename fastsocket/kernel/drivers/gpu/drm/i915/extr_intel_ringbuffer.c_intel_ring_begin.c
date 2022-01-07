
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_ring_buffer {TYPE_1__* dev; } ;
struct TYPE_5__ {int interruptible; } ;
struct TYPE_6__ {TYPE_2__ mm; int gpu_error; } ;
typedef TYPE_3__ drm_i915_private_t ;
struct TYPE_4__ {TYPE_3__* dev_private; } ;


 int __intel_ring_begin (struct intel_ring_buffer*,int) ;
 int i915_gem_check_wedge (int *,int ) ;
 int intel_ring_alloc_seqno (struct intel_ring_buffer*) ;

int intel_ring_begin(struct intel_ring_buffer *ring,
       int num_dwords)
{
 drm_i915_private_t *dev_priv = ring->dev->dev_private;
 int ret;

 ret = i915_gem_check_wedge(&dev_priv->gpu_error,
       dev_priv->mm.interruptible);
 if (ret)
  return ret;


 ret = intel_ring_alloc_seqno(ring);
 if (ret)
  return ret;

 return __intel_ring_begin(ring, num_dwords * sizeof(uint32_t));
}
