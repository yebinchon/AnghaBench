
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int dummy; } ;
struct drm_clip_rect {int dummy; } ;
struct TYPE_3__ {int num_cliprects; int sz; int DR4; int DR1; } ;
typedef TYPE_1__ drm_i915_cmdbuffer_t ;


 int DRM_ERROR (char*) ;
 int EINVAL ;
 int i915_emit_box (struct drm_device*,struct drm_clip_rect*,int ,int ) ;
 int i915_emit_breadcrumb (struct drm_device*) ;
 int i915_emit_cmds (struct drm_device*,void*,int) ;
 int i915_kernel_lost_context (struct drm_device*) ;

__attribute__((used)) static int i915_dispatch_cmdbuffer(struct drm_device * dev,
       drm_i915_cmdbuffer_t *cmd,
       struct drm_clip_rect *cliprects,
       void *cmdbuf)
{
 int nbox = cmd->num_cliprects;
 int i = 0, count, ret;

 if (cmd->sz & 0x3) {
  DRM_ERROR("alignment");
  return -EINVAL;
 }

 i915_kernel_lost_context(dev);

 count = nbox ? nbox : 1;

 for (i = 0; i < count; i++) {
  if (i < nbox) {
   ret = i915_emit_box(dev, &cliprects[i],
         cmd->DR1, cmd->DR4);
   if (ret)
    return ret;
  }

  ret = i915_emit_cmds(dev, cmdbuf, cmd->sz / 4);
  if (ret)
   return ret;
 }

 i915_emit_breadcrumb(dev);
 return 0;
}
