
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum plane { ____Placeholder_plane } plane ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DISPLAY_PLANE_ENABLE ;
 int DSPCNTR (int) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int assert_pipe_enabled (struct drm_i915_private*,int) ;
 int intel_flush_display_plane (struct drm_i915_private*,int) ;
 int intel_wait_for_vblank (int ,int) ;

__attribute__((used)) static void intel_enable_plane(struct drm_i915_private *dev_priv,
          enum plane plane, enum pipe pipe)
{
 int reg;
 u32 val;


 assert_pipe_enabled(dev_priv, pipe);

 reg = DSPCNTR(plane);
 val = I915_READ(reg);
 if (val & DISPLAY_PLANE_ENABLE)
  return;

 I915_WRITE(reg, val | DISPLAY_PLANE_ENABLE);
 intel_flush_display_plane(dev_priv, plane);
 intel_wait_for_vblank(dev_priv->dev, pipe);
}
