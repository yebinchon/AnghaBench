
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;
struct drm_gem_object {int dummy; } ;
struct drm_device {int dummy; } ;
struct dma_buf {int dummy; } ;


 struct dma_buf* dma_buf_export (struct drm_i915_gem_object*,int *,int ,int) ;
 int i915_dmabuf_ops ;
 struct drm_i915_gem_object* to_intel_bo (struct drm_gem_object*) ;

struct dma_buf *i915_gem_prime_export(struct drm_device *dev,
          struct drm_gem_object *gem_obj, int flags)
{
 struct drm_i915_gem_object *obj = to_intel_bo(gem_obj);

 return dma_buf_export(obj, &i915_dmabuf_ops, obj->base.size, flags);
}
