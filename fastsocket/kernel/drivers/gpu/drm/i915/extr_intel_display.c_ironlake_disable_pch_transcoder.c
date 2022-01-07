
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DRM_ERROR (char*,int) ;
 int HAS_PCH_IBX (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int TRANSCONF (int) ;
 int TRANS_CHICKEN2 (int) ;
 int TRANS_CHICKEN2_TIMING_OVERRIDE ;
 int TRANS_ENABLE ;
 int TRANS_STATE_ENABLE ;
 int assert_fdi_rx_disabled (struct drm_i915_private*,int) ;
 int assert_fdi_tx_disabled (struct drm_i915_private*,int) ;
 int assert_pch_ports_disabled (struct drm_i915_private*,int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void ironlake_disable_pch_transcoder(struct drm_i915_private *dev_priv,
         enum pipe pipe)
{
 struct drm_device *dev = dev_priv->dev;
 uint32_t reg, val;


 assert_fdi_tx_disabled(dev_priv, pipe);
 assert_fdi_rx_disabled(dev_priv, pipe);


 assert_pch_ports_disabled(dev_priv, pipe);

 reg = TRANSCONF(pipe);
 val = I915_READ(reg);
 val &= ~TRANS_ENABLE;
 I915_WRITE(reg, val);

 if (wait_for((I915_READ(reg) & TRANS_STATE_ENABLE) == 0, 50))
  DRM_ERROR("failed to disable transcoder %d\n", pipe);

 if (!HAS_PCH_IBX(dev)) {

  reg = TRANS_CHICKEN2(pipe);
  val = I915_READ(reg);
  val &= ~TRANS_CHICKEN2_TIMING_OVERRIDE;
  I915_WRITE(reg, val);
 }
}
