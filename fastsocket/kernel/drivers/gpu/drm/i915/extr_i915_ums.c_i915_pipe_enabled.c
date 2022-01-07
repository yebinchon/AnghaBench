
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL_VCO_ENABLE ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int PIPE_A ;
 int _DPLL_A ;
 int _DPLL_B ;
 int _PCH_DPLL (int) ;

__attribute__((used)) static bool i915_pipe_enabled(struct drm_device *dev, enum pipe pipe)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 dpll_reg;


 if (pipe > 1)
  return 0;

 if (HAS_PCH_SPLIT(dev))
  dpll_reg = _PCH_DPLL(pipe);
 else
  dpll_reg = (pipe == PIPE_A) ? _DPLL_A : _DPLL_B;

 return (I915_READ(dpll_reg) & DPLL_VCO_ENABLE);
}
