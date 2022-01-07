
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nouveau_framebuffer {int nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_crtc {struct drm_framebuffer* fb; } ;


 int TTM_PL_FLAG_VRAM ;
 int nouveau_bo_pin (int ,int ) ;
 int nouveau_bo_unpin (int ) ;
 struct nouveau_framebuffer* nouveau_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int
nv50_crtc_swap_fbs(struct drm_crtc *crtc, struct drm_framebuffer *old_fb)
{
 struct nouveau_framebuffer *nvfb = nouveau_framebuffer(crtc->fb);
 int ret;

 ret = nouveau_bo_pin(nvfb->nvbo, TTM_PL_FLAG_VRAM);
 if (ret)
  return ret;

 if (old_fb) {
  nvfb = nouveau_framebuffer(old_fb);
  nouveau_bo_unpin(nvfb->nvbo);
 }

 return 0;
}
