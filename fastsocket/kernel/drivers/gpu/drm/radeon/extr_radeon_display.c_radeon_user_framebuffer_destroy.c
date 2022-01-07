
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_framebuffer {scalar_t__ obj; } ;
struct drm_framebuffer {int dummy; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_unreference_unlocked (scalar_t__) ;
 int kfree (struct radeon_framebuffer*) ;
 struct radeon_framebuffer* to_radeon_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void radeon_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct radeon_framebuffer *radeon_fb = to_radeon_framebuffer(fb);

 if (radeon_fb->obj) {
  drm_gem_object_unreference_unlocked(radeon_fb->obj);
 }
 drm_framebuffer_cleanup(fb);
 kfree(radeon_fb);
}
