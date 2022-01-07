
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ write_domain; } ;
struct drm_i915_gem_object {scalar_t__ cache_level; int map_and_fenceable; TYPE_1__ base; } ;


 scalar_t__ I915_CACHE_NONE ;
 scalar_t__ I915_GEM_DOMAIN_CPU ;

__attribute__((used)) static inline int use_cpu_reloc(struct drm_i915_gem_object *obj)
{
 return (obj->base.write_domain == I915_GEM_DOMAIN_CPU ||
  !obj->map_and_fenceable ||
  obj->cache_level != I915_CACHE_NONE);
}
