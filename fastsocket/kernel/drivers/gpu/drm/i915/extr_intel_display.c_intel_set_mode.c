
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_display_mode {int dummy; } ;
struct drm_crtc {int dev; } ;


 int __intel_set_mode (struct drm_crtc*,struct drm_display_mode*,int,int,struct drm_framebuffer*) ;
 int intel_modeset_check_state (int ) ;

int intel_set_mode(struct drm_crtc *crtc,
       struct drm_display_mode *mode,
       int x, int y, struct drm_framebuffer *fb)
{
 int ret;

 ret = __intel_set_mode(crtc, mode, x, y, fb);

 if (ret == 0)
  intel_modeset_check_state(crtc->dev);

 return ret;
}
