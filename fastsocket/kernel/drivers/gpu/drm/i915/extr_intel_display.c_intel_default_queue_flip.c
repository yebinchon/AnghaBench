
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int dummy; } ;
struct drm_framebuffer {int dummy; } ;
struct drm_device {int dummy; } ;
struct drm_crtc {int dummy; } ;


 int ENODEV ;

__attribute__((used)) static int intel_default_queue_flip(struct drm_device *dev,
        struct drm_crtc *crtc,
        struct drm_framebuffer *fb,
        struct drm_i915_gem_object *obj)
{
 return -ENODEV;
}
