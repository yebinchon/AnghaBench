
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int CURBASE (int) ;
 int CURCNTR (int) ;
 int CURSOR_MODE ;
 int CURSOR_MODE_64_ARGB_AX ;
 int FW_BLC_SELF ;
 int FW_BLC_SELF_EN ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int intel_wait_for_vblank (int ,int) ;

__attribute__((used)) static void
g4x_fixup_plane(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 u32 cntl = I915_READ(CURCNTR(pipe));

 if ((cntl & CURSOR_MODE) == 0) {
  u32 fw_bcl_self = I915_READ(FW_BLC_SELF);

  I915_WRITE(FW_BLC_SELF, fw_bcl_self & ~FW_BLC_SELF_EN);
  I915_WRITE(CURCNTR(pipe), CURSOR_MODE_64_ARGB_AX);
  intel_wait_for_vblank(dev_priv->dev, pipe);
  I915_WRITE(CURCNTR(pipe), cntl);
  I915_WRITE(CURBASE(pipe), I915_READ(CURBASE(pipe)));
  I915_WRITE(FW_BLC_SELF, fw_bcl_self);
 }
}
