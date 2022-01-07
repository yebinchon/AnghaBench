
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
struct TYPE_4__ {TYPE_1__ map_list; } ;
struct drm_i915_gem_object {TYPE_2__ base; } ;


 int drm_gem_free_mmap_offset (TYPE_2__*) ;

__attribute__((used)) static void i915_gem_object_free_mmap_offset(struct drm_i915_gem_object *obj)
{
 if (!obj->base.map_list.map)
  return;

 drm_gem_free_mmap_offset(&obj->base);
}
