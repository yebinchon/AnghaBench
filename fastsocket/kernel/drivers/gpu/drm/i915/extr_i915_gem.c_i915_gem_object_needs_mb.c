
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int read_domains; } ;
struct drm_i915_gem_object {TYPE_1__ base; } ;


 int I915_GEM_DOMAIN_GTT ;

__attribute__((used)) inline static bool i915_gem_object_needs_mb(struct drm_i915_gem_object *obj)
{
 return obj && obj->base.read_domains & I915_GEM_DOMAIN_GTT;
}
