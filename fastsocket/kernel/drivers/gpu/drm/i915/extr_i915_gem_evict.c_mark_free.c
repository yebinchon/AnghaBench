
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {int dummy; } ;
struct drm_i915_gem_object {int gtt_space; int exec_list; scalar_t__ pin_count; } ;


 int drm_mm_scan_add_block (int ) ;
 int list_add (int *,struct list_head*) ;

__attribute__((used)) static bool
mark_free(struct drm_i915_gem_object *obj, struct list_head *unwind)
{
 if (obj->pin_count)
  return 0;

 list_add(&obj->exec_list, unwind);
 return drm_mm_scan_add_block(obj->gtt_space);
}
