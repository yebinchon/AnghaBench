
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dpio_lock; } ;


 int DPIO_BUSY ;
 int DPIO_BYTE ;
 int DPIO_DATA ;
 int DPIO_OP_READ ;
 int DPIO_PKT ;
 int DPIO_PORTID ;
 int DPIO_REG ;
 int DPIO_RID ;
 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 scalar_t__ wait_for_atomic_us (int,int) ;

u32 intel_dpio_read(struct drm_i915_private *dev_priv, int reg)
{
 WARN_ON(!mutex_is_locked(&dev_priv->dpio_lock));

 if (wait_for_atomic_us((I915_READ(DPIO_PKT) & DPIO_BUSY) == 0, 100)) {
  DRM_ERROR("DPIO idle wait timed out\n");
  return 0;
 }

 I915_WRITE(DPIO_REG, reg);
 I915_WRITE(DPIO_PKT, DPIO_RID | DPIO_OP_READ | DPIO_PORTID |
     DPIO_BYTE);
 if (wait_for_atomic_us((I915_READ(DPIO_PKT) & DPIO_BUSY) == 0, 100)) {
  DRM_ERROR("DPIO read wait timed out\n");
  return 0;
 }

 return I915_READ(DPIO_DATA);
}
