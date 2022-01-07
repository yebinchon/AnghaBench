
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct intel_ring_buffer {int mmio_base; TYPE_1__* dev; } ;
typedef int drm_i915_private_t ;
struct TYPE_2__ {int * dev_private; } ;


 int DRM_ERROR (char*) ;
 int GEN6_BSD_RNCID ;
 int GEN6_BSD_SLEEP_INDICATOR ;
 int GEN6_BSD_SLEEP_MSG_DISABLE ;
 int GEN6_BSD_SLEEP_PSMI_CONTROL ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int I915_WRITE64 (int ,int) ;
 int I915_WRITE_TAIL (struct intel_ring_buffer*,int ) ;
 int POSTING_READ (int ) ;
 int RING_TAIL (int ) ;
 int _MASKED_BIT_DISABLE (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void gen6_bsd_ring_write_tail(struct intel_ring_buffer *ring,
         u32 value)
{
 drm_i915_private_t *dev_priv = ring->dev->dev_private;






 I915_WRITE(GEN6_BSD_SLEEP_PSMI_CONTROL,
     _MASKED_BIT_ENABLE(GEN6_BSD_SLEEP_MSG_DISABLE));


 I915_WRITE64(GEN6_BSD_RNCID, 0x0);


 if (wait_for((I915_READ(GEN6_BSD_SLEEP_PSMI_CONTROL) &
        GEN6_BSD_SLEEP_INDICATOR) == 0,
       50))
  DRM_ERROR("timed out waiting for the BSD ring to wake up\n");


 I915_WRITE_TAIL(ring, value);
 POSTING_READ(RING_TAIL(ring->mmio_base));




 I915_WRITE(GEN6_BSD_SLEEP_PSMI_CONTROL,
     _MASKED_BIT_DISABLE(GEN6_BSD_SLEEP_MSG_DISABLE));
}
