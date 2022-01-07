
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {TYPE_1__* dev; } ;
struct intel_crtc {int pipe; int plane; TYPE_2__ base; } ;
struct drm_i915_private {int num_pipe; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 int DISPLAY_PLANE_ENABLE ;
 int DISPPLANE_SEL_PIPE_MASK ;
 int DSPCNTR (int) ;
 int I915_READ (int) ;

__attribute__((used)) static bool
intel_check_plane_mapping(struct intel_crtc *crtc)
{
 struct drm_i915_private *dev_priv = crtc->base.dev->dev_private;
 u32 reg, val;

 if (dev_priv->num_pipe == 1)
  return 1;

 reg = DSPCNTR(!crtc->plane);
 val = I915_READ(reg);

 if ((val & DISPLAY_PLANE_ENABLE) &&
     (!!(val & DISPPLANE_SEL_PIPE_MASK) == crtc->pipe))
  return 0;

 return 1;
}
