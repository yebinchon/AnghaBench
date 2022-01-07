
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_gem_execbuffer2 {int flags; int batch_start_offset; int batch_len; } ;


 int __I915_EXEC_UNKNOWN_FLAGS ;

__attribute__((used)) static bool
i915_gem_check_execbuffer(struct drm_i915_gem_execbuffer2 *exec)
{
 if (exec->flags & __I915_EXEC_UNKNOWN_FLAGS)
  return 0;

 return ((exec->batch_start_offset | exec->batch_len) & 0x7) == 0;
}
