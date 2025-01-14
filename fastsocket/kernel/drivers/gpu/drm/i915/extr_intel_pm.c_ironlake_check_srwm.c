
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_watermark_params {int max_wm; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DISP_ARB_CTL ;
 int DISP_FBC_WM_DIS ;
 int DRM_DEBUG_KMS (char*,int,int,...) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int SNB_CURSOR_MAX_SRWM ;
 int SNB_DISPLAY_MAX_SRWM ;
 int SNB_FBC_MAX_SRWM ;

__attribute__((used)) static bool ironlake_check_srwm(struct drm_device *dev, int level,
    int fbc_wm, int display_wm, int cursor_wm,
    const struct intel_watermark_params *display,
    const struct intel_watermark_params *cursor)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 DRM_DEBUG_KMS("watermark %d: display plane %d, fbc lines %d,"
        " cursor %d\n", level, display_wm, fbc_wm, cursor_wm);

 if (fbc_wm > SNB_FBC_MAX_SRWM) {
  DRM_DEBUG_KMS("fbc watermark(%d) is too large(%d), disabling wm%d+\n",
         fbc_wm, SNB_FBC_MAX_SRWM, level);


  I915_WRITE(DISP_ARB_CTL,
      I915_READ(DISP_ARB_CTL) | DISP_FBC_WM_DIS);
  return 0;
 }

 if (display_wm > display->max_wm) {
  DRM_DEBUG_KMS("display watermark(%d) is too large(%d), disabling wm%d+\n",
         display_wm, SNB_DISPLAY_MAX_SRWM, level);
  return 0;
 }

 if (cursor_wm > cursor->max_wm) {
  DRM_DEBUG_KMS("cursor watermark(%d) is too large(%d), disabling wm%d+\n",
         cursor_wm, SNB_CURSOR_MAX_SRWM, level);
  return 0;
 }

 if (!(fbc_wm || display_wm || cursor_wm)) {
  DRM_DEBUG_KMS("latency %d is 0, disabling wm%d+\n", level, level);
  return 0;
 }

 return 1;
}
