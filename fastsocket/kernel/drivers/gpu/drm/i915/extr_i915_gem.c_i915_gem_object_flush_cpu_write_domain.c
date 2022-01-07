
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ write_domain; int read_domains; int dev; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 scalar_t__ I915_GEM_DOMAIN_CPU ;
 int i915_gem_chipset_flush (int ) ;
 int i915_gem_clflush_object (struct drm_i915_gem_object*) ;
 int trace_i915_gem_object_change_domain (struct drm_i915_gem_object*,int ,scalar_t__) ;

__attribute__((used)) static void
i915_gem_object_flush_cpu_write_domain(struct drm_i915_gem_object *obj)
{
 uint32_t old_write_domain;

 if (obj->base.write_domain != I915_GEM_DOMAIN_CPU)
  return;

 i915_gem_clflush_object(obj);
 i915_gem_chipset_flush(obj->base.dev);
 old_write_domain = obj->base.write_domain;
 obj->base.write_domain = 0;

 trace_i915_gem_object_change_domain(obj,
         obj->base.read_domains,
         old_write_domain);
}
