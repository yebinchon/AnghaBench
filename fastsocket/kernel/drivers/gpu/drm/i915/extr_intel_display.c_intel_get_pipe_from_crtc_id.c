
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_crtc {int pipe; } ;
struct drm_mode_object {int dummy; } ;
struct drm_i915_get_pipe_from_crtc_id {int pipe; int crtc_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int DRIVER_MODESET ;
 int DRM_ERROR (char*) ;
 int DRM_MODE_OBJECT_CRTC ;
 int EINVAL ;
 int ENODEV ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 int obj_to_crtc (struct drm_mode_object*) ;
 struct intel_crtc* to_intel_crtc (int ) ;

int intel_get_pipe_from_crtc_id(struct drm_device *dev, void *data,
    struct drm_file *file)
{
 struct drm_i915_get_pipe_from_crtc_id *pipe_from_crtc_id = data;
 struct drm_mode_object *drmmode_obj;
 struct intel_crtc *crtc;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 drmmode_obj = drm_mode_object_find(dev, pipe_from_crtc_id->crtc_id,
   DRM_MODE_OBJECT_CRTC);

 if (!drmmode_obj) {
  DRM_ERROR("no such CRTC id\n");
  return -EINVAL;
 }

 crtc = to_intel_crtc(obj_to_crtc(drmmode_obj));
 pipe_from_crtc_id->pipe = crtc->pipe;

 return 0;
}
