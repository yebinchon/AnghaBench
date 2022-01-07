
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int read_domains; int write_domain; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int I915_GEM_DOMAIN_GTT ;
 int i915_gem_release_mmap (struct drm_i915_gem_object*) ;
 int mb () ;
 int trace_i915_gem_object_change_domain (struct drm_i915_gem_object*,int,int) ;

__attribute__((used)) static void i915_gem_object_finish_gtt(struct drm_i915_gem_object *obj)
{
 u32 old_write_domain, old_read_domains;


 i915_gem_release_mmap(obj);

 if ((obj->base.read_domains & I915_GEM_DOMAIN_GTT) == 0)
  return;


 mb();

 old_read_domains = obj->base.read_domains;
 old_write_domain = obj->base.write_domain;

 obj->base.read_domains &= ~I915_GEM_DOMAIN_GTT;
 obj->base.write_domain &= ~I915_GEM_DOMAIN_GTT;

 trace_i915_gem_object_change_domain(obj,
         old_read_domains,
         old_write_domain);
}
