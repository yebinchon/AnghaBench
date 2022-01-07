
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eb_objects {int dummy; } ;
struct drm_i915_gem_relocation_entry {int dummy; } ;
struct drm_i915_gem_object {struct drm_i915_gem_exec_object2* exec_entry; } ;
struct drm_i915_gem_exec_object2 {int relocation_count; } ;


 int i915_gem_execbuffer_relocate_entry (struct drm_i915_gem_object*,struct eb_objects*,struct drm_i915_gem_relocation_entry*) ;

__attribute__((used)) static int
i915_gem_execbuffer_relocate_object_slow(struct drm_i915_gem_object *obj,
      struct eb_objects *eb,
      struct drm_i915_gem_relocation_entry *relocs)
{
 const struct drm_i915_gem_exec_object2 *entry = obj->exec_entry;
 int i, ret;

 for (i = 0; i < entry->relocation_count; i++) {
  ret = i915_gem_execbuffer_relocate_entry(obj, eb, &relocs[i]);
  if (ret)
   return ret;
 }

 return 0;
}
