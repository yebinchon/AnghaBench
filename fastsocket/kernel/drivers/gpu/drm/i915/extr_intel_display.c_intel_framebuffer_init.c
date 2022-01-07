
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_framebuffer {int base; struct drm_i915_gem_object* obj; } ;
struct drm_mode_fb_cmd2 {int* pitches; int pixel_format; scalar_t__* offsets; } ;
struct drm_i915_gem_object {scalar_t__ tiling_mode; int stride; } ;
struct drm_device {int dummy; } ;
struct TYPE_2__ {int gen; } ;


 int DRM_DEBUG (char*,...) ;
 int DRM_ERROR (char*,int) ;
 int EINVAL ;
 scalar_t__ I915_TILING_NONE ;
 scalar_t__ I915_TILING_Y ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int drm_framebuffer_init (struct drm_device*,int *,int *) ;
 int drm_helper_mode_fill_fb_struct (int *,struct drm_mode_fb_cmd2*) ;
 int intel_fb_funcs ;

int intel_framebuffer_init(struct drm_device *dev,
      struct intel_framebuffer *intel_fb,
      struct drm_mode_fb_cmd2 *mode_cmd,
      struct drm_i915_gem_object *obj)
{
 int ret;

 if (obj->tiling_mode == I915_TILING_Y) {
  DRM_DEBUG("hardware does not support tiling Y\n");
  return -EINVAL;
 }

 if (mode_cmd->pitches[0] & 63) {
  DRM_DEBUG("pitch (%d) must be at least 64 byte aligned\n",
     mode_cmd->pitches[0]);
  return -EINVAL;
 }


 if (mode_cmd->pitches[0] > 32768) {
  DRM_DEBUG("pitch (%d) must be at less than 32768\n",
     mode_cmd->pitches[0]);
  return -EINVAL;
 }

 if (obj->tiling_mode != I915_TILING_NONE &&
     mode_cmd->pitches[0] != obj->stride) {
  DRM_DEBUG("pitch (%d) must match tiling stride (%d)\n",
     mode_cmd->pitches[0], obj->stride);
  return -EINVAL;
 }


 switch (mode_cmd->pixel_format) {
 case 138:
 case 137:
 case 130:
 case 139:
  break;
 case 132:
 case 141:
  if (INTEL_INFO(dev)->gen > 3) {
   DRM_DEBUG("invalid format: 0x%08x\n", mode_cmd->pixel_format);
   return -EINVAL;
  }
  break;
 case 133:
 case 142:
 case 131:
 case 140:
 case 134:
 case 143:
  if (INTEL_INFO(dev)->gen < 4) {
   DRM_DEBUG("invalid format: 0x%08x\n", mode_cmd->pixel_format);
   return -EINVAL;
  }
  break;
 case 129:
 case 136:
 case 128:
 case 135:
  if (INTEL_INFO(dev)->gen < 5) {
   DRM_DEBUG("invalid format: 0x%08x\n", mode_cmd->pixel_format);
   return -EINVAL;
  }
  break;
 default:
  DRM_DEBUG("unsupported pixel format 0x%08x\n", mode_cmd->pixel_format);
  return -EINVAL;
 }


 if (mode_cmd->offsets[0] != 0)
  return -EINVAL;

 drm_helper_mode_fill_fb_struct(&intel_fb->base, mode_cmd);
 intel_fb->obj = obj;

 ret = drm_framebuffer_init(dev, &intel_fb->base, &intel_fb_funcs);
 if (ret) {
  DRM_ERROR("framebuffer init failed %d\n", ret);
  return ret;
 }

 return 0;
}
