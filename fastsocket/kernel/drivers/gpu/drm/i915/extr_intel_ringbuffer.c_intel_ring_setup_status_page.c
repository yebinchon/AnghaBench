
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ gfx_addr; } ;
struct intel_ring_buffer {int id; TYPE_1__ status_page; int mmio_base; struct drm_device* dev; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_i915_private_t ;



 int BLT_HWS_PGA_GEN7 ;
 int BSD_HWS_PGA_GEN7 ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 int POSTING_READ (int ) ;

 int RENDER_HWS_PGA_GEN7 ;
 int RING_HWS_PGA (int ) ;
 int RING_HWS_PGA_GEN6 (int ) ;


void intel_ring_setup_status_page(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 drm_i915_private_t *dev_priv = ring->dev->dev_private;
 u32 mmio = 0;




 if (IS_GEN7(dev)) {
  switch (ring->id) {
  case 129:
   mmio = RENDER_HWS_PGA_GEN7;
   break;
  case 130:
   mmio = BLT_HWS_PGA_GEN7;
   break;
  case 128:
   mmio = BSD_HWS_PGA_GEN7;
   break;
  }
 } else if (IS_GEN6(ring->dev)) {
  mmio = RING_HWS_PGA_GEN6(ring->mmio_base);
 } else {
  mmio = RING_HWS_PGA(ring->mmio_base);
 }

 I915_WRITE(mmio, (u32)ring->status_page.gfx_addr);
 POSTING_READ(mmio);
}
