
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t object_memory; int object_count; } ;
struct drm_i915_private {TYPE_1__ mm; } ;



__attribute__((used)) static void i915_gem_info_add_obj(struct drm_i915_private *dev_priv,
      size_t size)
{
 dev_priv->mm.object_count++;
 dev_priv->mm.object_memory += size;
}
