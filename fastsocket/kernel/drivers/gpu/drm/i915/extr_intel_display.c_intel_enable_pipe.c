
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_LPT (int ) ;
 int HAS_PCH_SPLIT (int ) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int PIPECONF (int) ;
 int PIPECONF_ENABLE ;
 int TRANSCODER_A ;
 int assert_fdi_rx_pll_enabled (struct drm_i915_private*,int) ;
 int assert_fdi_tx_pll_enabled (struct drm_i915_private*,int) ;
 int assert_pll_enabled (struct drm_i915_private*,int) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int intel_wait_for_vblank (int ,int) ;

__attribute__((used)) static void intel_enable_pipe(struct drm_i915_private *dev_priv, enum pipe pipe,
         bool pch_port)
{
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);
 enum pipe pch_transcoder;
 int reg;
 u32 val;

 if (HAS_PCH_LPT(dev_priv->dev))
  pch_transcoder = TRANSCODER_A;
 else
  pch_transcoder = pipe;






 if (!HAS_PCH_SPLIT(dev_priv->dev))
  assert_pll_enabled(dev_priv, pipe);
 else {
  if (pch_port) {

   assert_fdi_rx_pll_enabled(dev_priv, pch_transcoder);
   assert_fdi_tx_pll_enabled(dev_priv,
        (enum pipe) cpu_transcoder);
  }

 }

 reg = PIPECONF(cpu_transcoder);
 val = I915_READ(reg);
 if (val & PIPECONF_ENABLE)
  return;

 I915_WRITE(reg, val | PIPECONF_ENABLE);
 intel_wait_for_vblank(dev_priv->dev, pipe);
}
