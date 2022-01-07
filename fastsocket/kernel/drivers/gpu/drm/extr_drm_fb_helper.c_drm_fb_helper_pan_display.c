
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fb_var_screeninfo {int yoffset; int xoffset; } ;
struct TYPE_4__ {int yoffset; int xoffset; } ;
struct fb_info {TYPE_2__ var; struct drm_fb_helper* par; } ;
struct drm_mode_set {scalar_t__ num_connectors; int y; int x; struct drm_crtc* crtc; } ;
struct drm_fb_helper {int crtc_count; TYPE_1__* crtc_info; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {struct drm_mode_set mode_set; } ;


 int EBUSY ;
 int drm_fb_helper_is_bound (struct drm_fb_helper*) ;
 int drm_mode_set_config_internal (struct drm_mode_set*) ;
 int drm_modeset_lock_all (struct drm_device*) ;
 int drm_modeset_unlock_all (struct drm_device*) ;

int drm_fb_helper_pan_display(struct fb_var_screeninfo *var,
         struct fb_info *info)
{
 struct drm_fb_helper *fb_helper = info->par;
 struct drm_device *dev = fb_helper->dev;
 struct drm_mode_set *modeset;
 struct drm_crtc *crtc;
 int ret = 0;
 int i;

 drm_modeset_lock_all(dev);
 if (!drm_fb_helper_is_bound(fb_helper)) {
  drm_modeset_unlock_all(dev);
  return -EBUSY;
 }

 for (i = 0; i < fb_helper->crtc_count; i++) {
  crtc = fb_helper->crtc_info[i].mode_set.crtc;

  modeset = &fb_helper->crtc_info[i].mode_set;

  modeset->x = var->xoffset;
  modeset->y = var->yoffset;

  if (modeset->num_connectors) {
   ret = drm_mode_set_config_internal(modeset);
   if (!ret) {
    info->var.xoffset = var->xoffset;
    info->var.yoffset = var->yoffset;
   }
  }
 }
 drm_modeset_unlock_all(dev);
 return ret;
}
