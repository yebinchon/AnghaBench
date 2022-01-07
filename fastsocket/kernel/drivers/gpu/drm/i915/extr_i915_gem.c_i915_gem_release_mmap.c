
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ key; } ;
struct TYPE_7__ {TYPE_2__ hash; } ;
struct TYPE_8__ {int size; TYPE_3__ map_list; TYPE_1__* dev; } ;
struct drm_i915_gem_object {int fault_mappable; TYPE_4__ base; } ;
typedef int loff_t ;
struct TYPE_5__ {scalar_t__ dev_mapping; } ;


 int PAGE_SHIFT ;
 int unmap_mapping_range (scalar_t__,int,int ,int) ;

void
i915_gem_release_mmap(struct drm_i915_gem_object *obj)
{
 if (!obj->fault_mappable)
  return;

 if (obj->base.dev->dev_mapping)
  unmap_mapping_range(obj->base.dev->dev_mapping,
        (loff_t)obj->base.map_list.hash.key<<PAGE_SHIFT,
        obj->base.size, 1);

 obj->fault_mappable = 0;
}
