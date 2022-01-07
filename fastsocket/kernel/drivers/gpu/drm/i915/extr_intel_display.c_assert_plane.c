
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum plane { ____Placeholder_plane } plane ;


 int DISPLAY_PLANE_ENABLE ;
 int DSPCNTR (int) ;
 int I915_READ (int) ;
 int WARN (int,char*,int ,int ,int ) ;
 int plane_name (int) ;
 int state_string (int) ;

__attribute__((used)) static void assert_plane(struct drm_i915_private *dev_priv,
    enum plane plane, bool state)
{
 int reg;
 u32 val;
 bool cur_state;

 reg = DSPCNTR(plane);
 val = I915_READ(reg);
 cur_state = !!(val & DISPLAY_PLANE_ENABLE);
 WARN(cur_state != state,
      "plane %c assertion failure (expected %s, current %s)\n",
      plane_name(plane), state_string(state), state_string(cur_state));
}
