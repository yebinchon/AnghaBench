
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {int (* set_seqno ) (struct intel_ring_buffer*,int ) ;int mmio_base; TYPE_2__* dev; int outstanding_lazy_request; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;
struct TYPE_3__ {int gen; } ;


 int BUG_ON (int ) ;
 int I915_WRITE (int ,int ) ;
 TYPE_1__* INTEL_INFO (TYPE_2__*) ;
 int RING_SYNC_0 (int ) ;
 int RING_SYNC_1 (int ) ;
 int stub1 (struct intel_ring_buffer*,int ) ;

void intel_ring_init_seqno(struct intel_ring_buffer *ring, u32 seqno)
{
 struct drm_i915_private *dev_priv = ring->dev->dev_private;

 BUG_ON(ring->outstanding_lazy_request);

 if (INTEL_INFO(ring->dev)->gen >= 6) {
  I915_WRITE(RING_SYNC_0(ring->mmio_base), 0);
  I915_WRITE(RING_SYNC_1(ring->mmio_base), 0);
 }

 ring->set_seqno(ring, seqno);
}
