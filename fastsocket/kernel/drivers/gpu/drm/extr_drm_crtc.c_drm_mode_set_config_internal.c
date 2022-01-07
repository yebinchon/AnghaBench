
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_mode_set {struct drm_framebuffer* fb; struct drm_crtc* crtc; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {TYPE_1__* funcs; struct drm_framebuffer* fb; } ;
struct TYPE_2__ {int (* set_config ) (struct drm_mode_set*) ;} ;


 int drm_framebuffer_reference (struct drm_framebuffer*) ;
 int drm_framebuffer_unreference (struct drm_framebuffer*) ;
 int stub1 (struct drm_mode_set*) ;

int drm_mode_set_config_internal(struct drm_mode_set *set)
{
 struct drm_crtc *crtc = set->crtc;
 struct drm_framebuffer *fb, *old_fb;
 int ret;

 old_fb = crtc->fb;
 fb = set->fb;

 ret = crtc->funcs->set_config(set);
 if (ret == 0) {
  if (old_fb)
   drm_framebuffer_unreference(old_fb);
  if (fb)
   drm_framebuffer_reference(fb);
 }

 return ret;
}
