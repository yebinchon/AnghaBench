
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nouveau_framebuffer {TYPE_1__* nvbo; } ;
struct drm_framebuffer {int dummy; } ;
struct TYPE_2__ {int gem; } ;


 int drm_framebuffer_cleanup (struct drm_framebuffer*) ;
 int drm_gem_object_unreference_unlocked (int ) ;
 int kfree (struct nouveau_framebuffer*) ;
 struct nouveau_framebuffer* nouveau_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static void
nouveau_user_framebuffer_destroy(struct drm_framebuffer *drm_fb)
{
 struct nouveau_framebuffer *fb = nouveau_framebuffer(drm_fb);

 if (fb->nvbo)
  drm_gem_object_unreference_unlocked(fb->nvbo->gem);

 drm_framebuffer_cleanup(drm_fb);
 kfree(fb);
}
