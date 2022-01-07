
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct drm_i915_private {int dpio_lock; } ;
typedef enum intel_sbi_destination { ____Placeholder_intel_sbi_destination } intel_sbi_destination ;


 int DRM_ERROR (char*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SBI_ADDR ;
 int SBI_BUSY ;
 int SBI_CTL_DEST_ICLK ;
 int SBI_CTL_DEST_MPHY ;
 int SBI_CTL_OP_CRWR ;
 int SBI_CTL_OP_IOWR ;
 int SBI_CTL_STAT ;
 int SBI_DATA ;
 int SBI_ICLK ;
 int SBI_RESPONSE_FAIL ;
 int WARN_ON (int) ;
 int mutex_is_locked (int *) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void
intel_sbi_write(struct drm_i915_private *dev_priv, u16 reg, u32 value,
  enum intel_sbi_destination destination)
{
 u32 tmp;

 WARN_ON(!mutex_is_locked(&dev_priv->dpio_lock));

 if (wait_for((I915_READ(SBI_CTL_STAT) & SBI_BUSY) == 0,
    100)) {
  DRM_ERROR("timeout waiting for SBI to become ready\n");
  return;
 }

 I915_WRITE(SBI_ADDR, (reg << 16));
 I915_WRITE(SBI_DATA, value);

 if (destination == SBI_ICLK)
  tmp = SBI_CTL_DEST_ICLK | SBI_CTL_OP_CRWR;
 else
  tmp = SBI_CTL_DEST_MPHY | SBI_CTL_OP_IOWR;
 I915_WRITE(SBI_CTL_STAT, SBI_BUSY | tmp);

 if (wait_for((I915_READ(SBI_CTL_STAT) & (SBI_BUSY | SBI_RESPONSE_FAIL)) == 0,
    100)) {
  DRM_ERROR("timeout waiting for SBI to complete write transaction\n");
  return;
 }
}
