
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct intel_ring_buffer {int dummy; } ;
struct TYPE_2__ {scalar_t__ read_domains; scalar_t__ write_domain; } ;
struct drm_i915_gem_object {TYPE_1__ base; struct intel_ring_buffer* ring; } ;


 int I915_CACHE_NONE ;
 scalar_t__ I915_GEM_DOMAIN_GTT ;
 int i915_gem_object_flush_cpu_write_domain (struct drm_i915_gem_object*) ;
 int i915_gem_object_pin (struct drm_i915_gem_object*,scalar_t__,int,int) ;
 int i915_gem_object_set_cache_level (struct drm_i915_gem_object*,int ) ;
 int i915_gem_object_sync (struct drm_i915_gem_object*,struct intel_ring_buffer*) ;
 int trace_i915_gem_object_change_domain (struct drm_i915_gem_object*,scalar_t__,scalar_t__) ;

int
i915_gem_object_pin_to_display_plane(struct drm_i915_gem_object *obj,
         u32 alignment,
         struct intel_ring_buffer *pipelined)
{
 u32 old_read_domains, old_write_domain;
 int ret;

 if (pipelined != obj->ring) {
  ret = i915_gem_object_sync(obj, pipelined);
  if (ret)
   return ret;
 }
 ret = i915_gem_object_set_cache_level(obj, I915_CACHE_NONE);
 if (ret)
  return ret;





 ret = i915_gem_object_pin(obj, alignment, 1, 0);
 if (ret)
  return ret;

 i915_gem_object_flush_cpu_write_domain(obj);

 old_write_domain = obj->base.write_domain;
 old_read_domains = obj->base.read_domains;




 obj->base.write_domain = 0;
 obj->base.read_domains |= I915_GEM_DOMAIN_GTT;

 trace_i915_gem_object_change_domain(obj,
         old_read_domains,
         old_write_domain);

 return 0;
}
