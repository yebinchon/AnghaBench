
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int I915_READ (int ) ;
 int PANEL_UNLOCK_MASK ;
 int PANEL_UNLOCK_REGS ;
 int PCH_PP_CONTROL ;

__attribute__((used)) static u32 ironlake_get_pp_control(struct drm_i915_private *dev_priv)
{
 u32 control = I915_READ(PCH_PP_CONTROL);

 control &= ~PANEL_UNLOCK_MASK;
 control |= PANEL_UNLOCK_REGS;
 return control;
}
