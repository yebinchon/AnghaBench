
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
struct drm_i915_private {int num_pipe; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int enabled; } ;


 int DRM_DEBUG_KMS (char*,int) ;
 int DRM_ERROR (char*,int) ;
 int EBUSY ;
 int EINVAL ;
 int drm_calc_vbltimestamp_from_scanoutpos (struct drm_device*,int,int*,struct timeval*,unsigned int,struct drm_crtc*) ;
 struct drm_crtc* intel_get_crtc_for_pipe (struct drm_device*,int) ;

__attribute__((used)) static int i915_get_vblank_timestamp(struct drm_device *dev, int pipe,
         int *max_error,
         struct timeval *vblank_time,
         unsigned flags)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct drm_crtc *crtc;

 if (pipe < 0 || pipe >= dev_priv->num_pipe) {
  DRM_ERROR("Invalid crtc %d\n", pipe);
  return -EINVAL;
 }


 crtc = intel_get_crtc_for_pipe(dev, pipe);
 if (crtc == ((void*)0)) {
  DRM_ERROR("Invalid crtc %d\n", pipe);
  return -EINVAL;
 }

 if (!crtc->enabled) {
  DRM_DEBUG_KMS("crtc %d is disabled\n", pipe);
  return -EBUSY;
 }


 return drm_calc_vbltimestamp_from_scanoutpos(dev, pipe, max_error,
           vblank_time, flags,
           crtc);
}
