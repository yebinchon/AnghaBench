
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_framebuffer {struct drm_gem_object* obj; int base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;


 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_helper_mode_fill_fb_struct (int *,struct drm_mode_fb_cmd2*) ;
 int radeon_fb_funcs ;

int
radeon_framebuffer_init(struct drm_device *dev,
   struct radeon_framebuffer *rfb,
   struct drm_mode_fb_cmd2 *mode_cmd,
   struct drm_gem_object *obj)
{
 int ret;
 rfb->obj = obj;
 drm_helper_mode_fill_fb_struct(&rfb->base, mode_cmd);
 ret = drm_framebuffer_init(dev, &rfb->base, &radeon_fb_funcs);
 if (ret) {
  rfb->obj = ((void*)0);
  return ret;
 }
 return 0;
}
