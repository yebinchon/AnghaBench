
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int FDI_TX_CTL (int) ;
 int FDI_TX_ENABLE ;
 scalar_t__ HAS_DDI (int ) ;
 int I915_READ (int) ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_FUNC_ENABLE ;
 int WARN (int,char*,int ,int ) ;
 int intel_pipe_to_cpu_transcoder (struct drm_i915_private*,int) ;
 int state_string (int) ;

__attribute__((used)) static void assert_fdi_tx(struct drm_i915_private *dev_priv,
     enum pipe pipe, bool state)
{
 int reg;
 u32 val;
 bool cur_state;
 enum transcoder cpu_transcoder = intel_pipe_to_cpu_transcoder(dev_priv,
              pipe);

 if (HAS_DDI(dev_priv->dev)) {

  reg = TRANS_DDI_FUNC_CTL(cpu_transcoder);
  val = I915_READ(reg);
  cur_state = !!(val & TRANS_DDI_FUNC_ENABLE);
 } else {
  reg = FDI_TX_CTL(pipe);
  val = I915_READ(reg);
  cur_state = !!(val & FDI_TX_ENABLE);
 }
 WARN(cur_state != state,
      "FDI TX state assertion failure (expected %s, current %s)\n",
      state_string(state), state_string(cur_state));
}
