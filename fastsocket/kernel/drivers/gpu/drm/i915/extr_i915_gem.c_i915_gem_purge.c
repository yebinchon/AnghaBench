
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 long __i915_gem_shrink (struct drm_i915_private*,long,int) ;

__attribute__((used)) static long
i915_gem_purge(struct drm_i915_private *dev_priv, long target)
{
 return __i915_gem_shrink(dev_priv, target, 1);
}
