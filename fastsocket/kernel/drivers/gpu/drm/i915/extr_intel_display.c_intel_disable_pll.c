
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int quirks; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_VCO_ENABLE ;
 int I915_READ (int) ;
 int I915_WRITE (int,int ) ;
 int PIPE_A ;
 int POSTING_READ (int) ;
 int QUIRK_PIPEA_FORCE ;
 int assert_pipe_disabled (struct drm_i915_private*,int) ;

__attribute__((used)) static void intel_disable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 int reg;
 u32 val;


 if (pipe == PIPE_A && (dev_priv->quirks & QUIRK_PIPEA_FORCE))
  return;


 assert_pipe_disabled(dev_priv, pipe);

 reg = DPLL(pipe);
 val = I915_READ(reg);
 val &= ~DPLL_VCO_ENABLE;
 I915_WRITE(reg, val);
 POSTING_READ(reg);
}
