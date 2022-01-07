
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_framebuffer {TYPE_1__* obj; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int base; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_unreference_unlocked (int *) ;
 int kfree (struct intel_framebuffer*) ;
 struct intel_framebuffer* to_intel_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void intel_user_framebuffer_destroy(struct drm_framebuffer *fb)
{
 struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);

 drm_framebuffer_cleanup(fb);
 drm_gem_object_unreference_unlocked(&intel_fb->obj->base);

 kfree(intel_fb);
}
