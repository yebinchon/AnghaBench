
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {int mmio_base; TYPE_2__* dev; } ;
typedef int drm_i915_private_t ;
struct TYPE_4__ {int * dev_private; } ;
struct TYPE_3__ {int gen; } ;


 int ACTHD ;
 int I915_READ (int ) ;
 TYPE_1__* INTEL_INFO (TYPE_2__*) ;
 int RING_ACTHD (int ) ;

u32 intel_ring_get_active_head(struct intel_ring_buffer *ring)
{
 drm_i915_private_t *dev_priv = ring->dev->dev_private;
 u32 acthd_reg = INTEL_INFO(ring->dev)->gen >= 4 ?
   RING_ACTHD(ring->mmio_base) : ACTHD;

 return I915_READ(acthd_reg);
}
