
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct fb_info {struct drm_fb_helper* par; } ;
struct drm_fb_helper {int crtc_count; int connector_count; TYPE_3__** connector_info; TYPE_2__* crtc_info; struct drm_device* dev; } ;
struct TYPE_10__ {int dpms_property; } ;
struct drm_device {TYPE_5__ mode_config; } ;
struct drm_crtc {int enabled; } ;
struct drm_connector {int base; TYPE_4__* funcs; } ;
struct TYPE_9__ {int (* dpms ) (struct drm_connector*,int) ;} ;
struct TYPE_8__ {struct drm_connector* connector; } ;
struct TYPE_6__ {struct drm_crtc* crtc; } ;
struct TYPE_7__ {TYPE_1__ mode_set; } ;


 int drm_fb_helper_is_bound (struct drm_fb_helper*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;
 int drm_object_property_set_value (int *,int ,int) ;
 scalar_t__ oops_in_progress ;
 int stub1 (struct drm_connector*,int) ;

__attribute__((used)) static void drm_fb_helper_dpms(struct fb_info *info, int dpms_mode)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct drm_device *dev = fb_helper->dev;
 struct drm_crtc *crtc;
 struct drm_connector *connector;
 int i, j;






 if (oops_in_progress)
  return;




 drm_modeset_lock_all(dev);
 if (!drm_fb_helper_is_bound(fb_helper)) {
  drm_modeset_unlock_all(dev);
  return;
 }

 for (i = 0; i < fb_helper->crtc_count; i++) {
  crtc = fb_helper->crtc_info[i].mode_set.crtc;

  if (!crtc->enabled)
   continue;


  for (j = 0; j < fb_helper->connector_count; j++) {
   connector = fb_helper->connector_info[j]->connector;
   connector->funcs->dpms(connector, dpms_mode);
   drm_object_property_set_value(&connector->base,
    dev->mode_config.dpms_property, dpms_mode);
  }
 }
 drm_modeset_unlock_all(dev);
}
