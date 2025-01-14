
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_framebuffer {int dummy; } ;
struct intel_framebuffer {struct drm_framebuffer base; } ;
struct drm_mode_fb_cmd2 {int dummy; } ;
struct drm_i915_gem_object {int base; } ;
struct drm_device {int dummy; } ;


 int ENOMEM ;
 struct drm_framebuffer* ERR_PTR (int) ;
 int GFP_KERNEL ;
 int drm_gem_object_unreference_unlocked (int *) ;
 int intel_framebuffer_init (struct drm_device*,struct intel_framebuffer*,struct drm_mode_fb_cmd2*,struct drm_i915_gem_object*) ;
 int kfree (struct intel_framebuffer*) ;
 struct intel_framebuffer* kzalloc (int,int ) ;

__attribute__((used)) static struct drm_framebuffer *
intel_framebuffer_create(struct drm_device *dev,
    struct drm_mode_fb_cmd2 *mode_cmd,
    struct drm_i915_gem_object *obj)
{
 struct intel_framebuffer *intel_fb;
 int ret;

 intel_fb = kzalloc(sizeof(*intel_fb), GFP_KERNEL);
 if (!intel_fb) {
  drm_gem_object_unreference_unlocked(&obj->base);
  return ERR_PTR(-ENOMEM);
 }

 ret = intel_framebuffer_init(dev, intel_fb, mode_cmd, obj);
 if (ret) {
  drm_gem_object_unreference_unlocked(&obj->base);
  kfree(intel_fb);
  return ERR_PTR(ret);
 }

 return &intel_fb->base;
}
