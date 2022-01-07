
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int nv04_crtc_do_mode_set_base (struct drm_crtc*,struct drm_framebuffer*,int,int,int) ;

__attribute__((used)) static int
nv04_crtc_mode_set_base(struct drm_crtc *crtc, int x, int y,
   struct drm_framebuffer *old_fb)
{
 return nv04_crtc_do_mode_set_base(crtc, old_fb, x, y, 0);
}
