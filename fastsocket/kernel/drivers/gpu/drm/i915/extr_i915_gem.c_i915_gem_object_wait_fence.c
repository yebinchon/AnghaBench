
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_object {int fenced_gpu_access; scalar_t__ last_fenced_seqno; int ring; } ;


 int i915_wait_seqno (int ,scalar_t__) ;

__attribute__((used)) static int
i915_gem_object_wait_fence(struct drm_i915_gem_object *obj)
{
 if (obj->last_fenced_seqno) {
  int ret = i915_wait_seqno(obj->ring, obj->last_fenced_seqno);
  if (ret)
   return ret;

  obj->last_fenced_seqno = 0;
 }

 obj->fenced_gpu_access = 0;
 return 0;
}
