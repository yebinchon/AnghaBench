
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_2__ {scalar_t__ write_domain; int read_domains; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 scalar_t__ I915_GEM_DOMAIN_GTT ;
 int trace_i915_gem_object_change_domain (struct drm_i915_gem_object*,int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static void
i915_gem_object_flush_gtt_write_domain(struct drm_i915_gem_object *obj)
{
 uint32_t old_write_domain;

 if (obj->base.write_domain != I915_GEM_DOMAIN_GTT)
  return;
 wmb();

 old_write_domain = obj->base.write_domain;
 obj->base.write_domain = 0;

 trace_i915_gem_object_change_domain(obj,
         obj->base.read_domains,
         old_write_domain);
}
