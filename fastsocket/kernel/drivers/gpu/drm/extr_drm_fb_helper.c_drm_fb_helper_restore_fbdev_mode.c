
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_set {int dummy; } ;
struct drm_fb_helper {int crtc_count; TYPE_1__* crtc_info; int dev; } ;
struct TYPE_2__ {struct drm_mode_set mode_set; } ;


 int drm_mode_set_config_internal (struct drm_mode_set*) ;
 int drm_warn_on_modeset_not_all_locked (int ) ;

bool drm_fb_helper_restore_fbdev_mode(struct drm_fb_helper *fb_helper)
{
 bool error = 0;
 int i, ret;

 drm_warn_on_modeset_not_all_locked(fb_helper->dev);

 for (i = 0; i < fb_helper->crtc_count; i++) {
  struct drm_mode_set *mode_set = &fb_helper->crtc_info[i].mode_set;
  ret = drm_mode_set_config_internal(mode_set);
  if (ret)
   error = 1;
 }
 return error;
}
