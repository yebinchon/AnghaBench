
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_display_mode {int crtc_hdisplay; int clock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 int PIPE_WM_LINETIME (int) ;
 int PIPE_WM_LINETIME_MASK ;
 int PIPE_WM_LINETIME_TIME (int) ;

__attribute__((used)) static void
haswell_update_linetime_wm(struct drm_device *dev, int pipe,
     struct drm_display_mode *mode)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 temp;

 temp = I915_READ(PIPE_WM_LINETIME(pipe));
 temp &= ~PIPE_WM_LINETIME_MASK;




 temp |= PIPE_WM_LINETIME_TIME(
  ((mode->crtc_hdisplay * 1000) / mode->clock) * 8);
 I915_WRITE(PIPE_WM_LINETIME(pipe), temp);
}
