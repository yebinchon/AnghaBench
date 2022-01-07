
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DPLL (int) ;
 int DPLL_VCO_ENABLE ;
 int I915_READ (int) ;
 int WARN (int,char*,int ,int ) ;
 int state_string (int) ;

__attribute__((used)) static void assert_pll(struct drm_i915_private *dev_priv,
         enum pipe pipe, bool state)
{
 int reg;
 u32 val;
 bool cur_state;

 reg = DPLL(pipe);
 val = I915_READ(reg);
 cur_state = !!(val & DPLL_VCO_ENABLE);
 WARN(cur_state != state,
      "PLL state assertion failure (expected %s, current %s)\n",
      state_string(state), state_string(cur_state));
}
