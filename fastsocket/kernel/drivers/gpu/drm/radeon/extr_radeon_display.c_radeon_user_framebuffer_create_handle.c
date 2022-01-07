
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_framebuffer {int obj; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;


 int drm_gem_handle_create (struct drm_file*,int ,unsigned int*) ;
 struct radeon_framebuffer* to_radeon_framebuffer (struct drm_framebuffer*) ;

__attribute__((used)) static int radeon_user_framebuffer_create_handle(struct drm_framebuffer *fb,
        struct drm_file *file_priv,
        unsigned int *handle)
{
 struct radeon_framebuffer *radeon_fb = to_radeon_framebuffer(fb);

 return drm_gem_handle_create(file_priv, radeon_fb->obj, handle);
}
