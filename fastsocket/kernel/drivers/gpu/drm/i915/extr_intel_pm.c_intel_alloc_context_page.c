
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int base; } ;
struct drm_device {int struct_mutex; } ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,int) ;
 int WARN_ON (int) ;
 int drm_gem_object_unreference (int *) ;
 struct drm_i915_gem_object* i915_gem_alloc_object (struct drm_device*,int) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,int,int,int) ;
 int i915_gem_object_set_to_gtt_domain (struct drm_i915_gem_object*,int) ;
 int i915_gem_object_unpin (struct drm_i915_gem_object*) ;
 int mutex_is_locked (int *) ;

__attribute__((used)) static struct drm_i915_gem_object *
intel_alloc_context_page(struct drm_device *dev)
{
 struct drm_i915_gem_object *ctx;
 int ret;

 WARN_ON(!mutex_is_locked(&dev->struct_mutex));

 ctx = i915_gem_alloc_object(dev, 4096);
 if (!ctx) {
  DRM_DEBUG("failed to alloc power context, RC6 disabled\n");
  return ((void*)0);
 }

 ret = i915_gem_object_pin(ctx, 4096, 1, 0);
 if (ret) {
  DRM_ERROR("failed to pin power context: %d\n", ret);
  goto err_unref;
 }

 ret = i915_gem_object_set_to_gtt_domain(ctx, 1);
 if (ret) {
  DRM_ERROR("failed to set-domain on power context: %d\n", ret);
  goto err_unpin;
 }

 return ctx;

err_unpin:
 i915_gem_object_unpin(ctx);
err_unref:
 drm_gem_object_unreference(&ctx->base);
 return ((void*)0);
}
