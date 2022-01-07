
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DISPLAY_PLANE_ENABLE ;
 int DISPPLANE_SEL_PIPE_MASK ;
 int DISPPLANE_SEL_PIPE_SHIFT ;
 int DSPCNTR (int) ;
 scalar_t__ HAS_PCH_SPLIT (int ) ;
 int I915_READ (int) ;
 int WARN (int,char*,int ,...) ;
 int pipe_name (int) ;
 int plane_name (int) ;

__attribute__((used)) static void assert_planes_disabled(struct drm_i915_private *dev_priv,
       enum pipe pipe)
{
 int reg, i;
 u32 val;
 int cur_pipe;


 if (HAS_PCH_SPLIT(dev_priv->dev)) {
  reg = DSPCNTR(pipe);
  val = I915_READ(reg);
  WARN((val & DISPLAY_PLANE_ENABLE),
       "plane %c assertion failure, should be disabled but not\n",
       plane_name(pipe));
  return;
 }


 for (i = 0; i < 2; i++) {
  reg = DSPCNTR(i);
  val = I915_READ(reg);
  cur_pipe = (val & DISPPLANE_SEL_PIPE_MASK) >>
   DISPPLANE_SEL_PIPE_SHIFT;
  WARN((val & DISPLAY_PLANE_ENABLE) && pipe == cur_pipe,
       "plane %c assertion failure, should be off on pipe %c but is still active\n",
       plane_name(i), pipe_name(pipe));
 }
}
