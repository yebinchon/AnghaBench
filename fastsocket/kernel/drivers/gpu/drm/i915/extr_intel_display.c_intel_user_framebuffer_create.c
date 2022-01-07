
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_mode_fb_cmd2 {int * handles; } ;
struct drm_i915_gem_object {int base; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;


 int ENOENT ;
 struct drm_framebuffer* ERR_PTR (int ) ;
 int drm_gem_object_lookup (struct drm_device*,struct drm_file*,int ) ;
 struct drm_framebuffer* intel_framebuffer_create (struct drm_device*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ;
 struct drm_i915_gem_object* to_intel_bo (int ) ;

__attribute__((used)) static struct drm_framebuffer *
intel_user_framebuffer_create(struct drm_device *dev,
         struct drm_file *filp,
         struct drm_mode_fb_cmd2 *mode_cmd)
{
 struct drm_i915_gem_object *obj;

 obj = to_intel_bo(drm_gem_object_lookup(dev, filp,
      mode_cmd->handles[0]));
 if (&obj->base == ((void*)0))
  return ERR_PTR(-ENOENT);

 return intel_framebuffer_create(dev, mode_cmd, obj);
}
