
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_mode_object {int dummy; } ;
struct drm_mode_crtc {int mode_valid; int mode; scalar_t__ fb_id; int gamma_size; int y; int x; int crtc_id; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int mode; scalar_t__ enabled; TYPE_2__* fb; int gamma_size; int y; int x; } ;
struct TYPE_3__ {scalar_t__ id; } ;
struct TYPE_4__ {TYPE_1__ base; } ;


 int DRIVER_MODESET ;
 int DRM_MODE_OBJECT_CRTC ;
 int EINVAL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int drm_crtc_convert_to_umode (int *,int *) ;
 struct drm_mode_object* drm_mode_object_find (struct drm_device*,int ,int ) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 struct drm_crtc* obj_to_crtc (struct drm_mode_object*) ;

int drm_mode_getcrtc(struct drm_device *dev,
       void *data, struct drm_file *file_priv)
{
 struct drm_mode_crtc *crtc_resp = data;
 struct drm_crtc *crtc;
 struct drm_mode_object *obj;
 int ret = 0;

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  return -EINVAL;

 drm_modeset_lock_all(dev);

 obj = drm_mode_object_find(dev, crtc_resp->crtc_id,
       DRM_MODE_OBJECT_CRTC);
 if (!obj) {
  ret = -EINVAL;
  goto out;
 }
 crtc = obj_to_crtc(obj);

 crtc_resp->x = crtc->x;
 crtc_resp->y = crtc->y;
 crtc_resp->gamma_size = crtc->gamma_size;
 if (crtc->fb)
  crtc_resp->fb_id = crtc->fb->base.id;
 else
  crtc_resp->fb_id = 0;

 if (crtc->enabled) {

  drm_crtc_convert_to_umode(&crtc_resp->mode, &crtc->mode);
  crtc_resp->mode_valid = 1;

 } else {
  crtc_resp->mode_valid = 0;
 }

out:
 drm_modeset_unlock_all(dev);
 return ret;
}
