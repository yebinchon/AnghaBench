
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_SPLIT (int ) ;
 int I915_READ (int) ;
 int LVDS ;
 int LVDS_PIPEB_SELECT ;
 int PANEL_POWER_ON ;
 int PANEL_UNLOCK_REGS ;
 int PCH_LVDS ;
 int PCH_PP_CONTROL ;
 int PIPE_A ;
 int PIPE_B ;
 int PP_CONTROL ;
 int WARN (int,char*,int ) ;
 int pipe_name (int) ;

__attribute__((used)) static void assert_panel_unlocked(struct drm_i915_private *dev_priv,
      enum pipe pipe)
{
 int pp_reg, lvds_reg;
 u32 val;
 enum pipe panel_pipe = PIPE_A;
 bool locked = 1;

 if (HAS_PCH_SPLIT(dev_priv->dev)) {
  pp_reg = PCH_PP_CONTROL;
  lvds_reg = PCH_LVDS;
 } else {
  pp_reg = PP_CONTROL;
  lvds_reg = LVDS;
 }

 val = I915_READ(pp_reg);
 if (!(val & PANEL_POWER_ON) ||
     ((val & PANEL_UNLOCK_REGS) == PANEL_UNLOCK_REGS))
  locked = 0;

 if (I915_READ(lvds_reg) & LVDS_PIPEB_SELECT)
  panel_pipe = PIPE_B;

 WARN(panel_pipe == pipe && locked,
      "panel assertion failure, pipe %c regs locked\n",
      pipe_name(pipe));
}
