
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_crtc {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {int dummy; } ;
typedef enum mode_set_atomic { ____Placeholder_mode_set_atomic } mode_set_atomic ;


 struct nouveau_crtc* nouveau_crtc (struct drm_crtc*) ;
 int nv50_crtc_set_image (struct nouveau_crtc*,struct drm_framebuffer*,int,int,int) ;
 int nv50_display_flip_stop (struct drm_crtc*) ;

__attribute__((used)) static int
nv50_crtc_mode_set_base_atomic(struct drm_crtc *crtc,
          struct drm_framebuffer *fb, int x, int y,
          enum mode_set_atomic state)
{
 struct nouveau_crtc *nv_crtc = nouveau_crtc(crtc);
 nv50_display_flip_stop(crtc);
 nv50_crtc_set_image(nv_crtc, fb, x, y, 1);
 return 0;
}
