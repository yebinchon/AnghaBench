
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int,int) ;
 int I915_WRITE (int ,int) ;
 int ILK_LP0_CURSOR_LATENCY ;
 int ILK_LP0_PLANE_LATENCY ;
 int ILK_READ_WM1_LATENCY () ;
 int ILK_READ_WM2_LATENCY () ;
 int WM0_PIPEA_ILK ;
 int WM0_PIPEB_ILK ;
 int WM0_PIPE_PLANE_SHIFT ;
 int WM1_LP_FBC_SHIFT ;
 int WM1_LP_ILK ;
 int WM1_LP_LATENCY_SHIFT ;
 int WM1_LP_SR_EN ;
 int WM1_LP_SR_SHIFT ;
 int WM2_LP_EN ;
 int WM2_LP_ILK ;
 int WM3_LP_ILK ;
 int ffs (unsigned int) ;
 scalar_t__ g4x_compute_wm0 (struct drm_device*,int,int *,int ,int *,int ,int*,int*) ;
 int ironlake_compute_srwm (struct drm_device*,int,unsigned int,int,int *,int *,int*,int*,int*) ;
 int ironlake_cursor_srwm_info ;
 int ironlake_cursor_wm_info ;
 int ironlake_display_srwm_info ;
 int ironlake_display_wm_info ;
 int single_plane_enabled (unsigned int) ;

__attribute__((used)) static void ironlake_update_wm(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int fbc_wm, plane_wm, cursor_wm;
 unsigned int enabled;

 enabled = 0;
 if (g4x_compute_wm0(dev, 0,
       &ironlake_display_wm_info,
       ILK_LP0_PLANE_LATENCY,
       &ironlake_cursor_wm_info,
       ILK_LP0_CURSOR_LATENCY,
       &plane_wm, &cursor_wm)) {
  I915_WRITE(WM0_PIPEA_ILK,
      (plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm);
  DRM_DEBUG_KMS("FIFO watermarks For pipe A -"
         " plane %d, " "cursor: %d\n",
         plane_wm, cursor_wm);
  enabled |= 1;
 }

 if (g4x_compute_wm0(dev, 1,
       &ironlake_display_wm_info,
       ILK_LP0_PLANE_LATENCY,
       &ironlake_cursor_wm_info,
       ILK_LP0_CURSOR_LATENCY,
       &plane_wm, &cursor_wm)) {
  I915_WRITE(WM0_PIPEB_ILK,
      (plane_wm << WM0_PIPE_PLANE_SHIFT) | cursor_wm);
  DRM_DEBUG_KMS("FIFO watermarks For pipe B -"
         " plane %d, cursor: %d\n",
         plane_wm, cursor_wm);
  enabled |= 2;
 }





 I915_WRITE(WM3_LP_ILK, 0);
 I915_WRITE(WM2_LP_ILK, 0);
 I915_WRITE(WM1_LP_ILK, 0);

 if (!single_plane_enabled(enabled))
  return;
 enabled = ffs(enabled) - 1;


 if (!ironlake_compute_srwm(dev, 1, enabled,
       ILK_READ_WM1_LATENCY() * 500,
       &ironlake_display_srwm_info,
       &ironlake_cursor_srwm_info,
       &fbc_wm, &plane_wm, &cursor_wm))
  return;

 I915_WRITE(WM1_LP_ILK,
     WM1_LP_SR_EN |
     (ILK_READ_WM1_LATENCY() << WM1_LP_LATENCY_SHIFT) |
     (fbc_wm << WM1_LP_FBC_SHIFT) |
     (plane_wm << WM1_LP_SR_SHIFT) |
     cursor_wm);


 if (!ironlake_compute_srwm(dev, 2, enabled,
       ILK_READ_WM2_LATENCY() * 500,
       &ironlake_display_srwm_info,
       &ironlake_cursor_srwm_info,
       &fbc_wm, &plane_wm, &cursor_wm))
  return;

 I915_WRITE(WM2_LP_ILK,
     WM2_LP_EN |
     (ILK_READ_WM2_LATENCY() << WM1_LP_LATENCY_SHIFT) |
     (fbc_wm << WM1_LP_FBC_SHIFT) |
     (plane_wm << WM1_LP_SR_SHIFT) |
     cursor_wm);





}
