
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {struct drm_i915_gem_exec_object2* exec_entry; } ;
struct drm_i915_gem_exec_object2 {scalar_t__ relocation_count; } ;


 int use_cpu_reloc (struct drm_i915_gem_object*) ;

__attribute__((used)) static int
need_reloc_mappable(struct drm_i915_gem_object *obj)
{
 struct drm_i915_gem_exec_object2 *entry = obj->exec_entry;
 return entry->relocation_count && !use_cpu_reloc(obj);
}
