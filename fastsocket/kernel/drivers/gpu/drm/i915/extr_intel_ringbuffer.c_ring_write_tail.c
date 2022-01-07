
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {TYPE_1__* dev; } ;
typedef int drm_i915_private_t ;
struct TYPE_2__ {int * dev_private; } ;


 int I915_WRITE_TAIL (struct intel_ring_buffer*,int ) ;

__attribute__((used)) static void ring_write_tail(struct intel_ring_buffer *ring,
       u32 value)
{
 drm_i915_private_t *dev_priv = ring->dev->dev_private;
 I915_WRITE_TAIL(ring, value);
}
