
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_3__* dev_private; } ;
struct TYPE_5__ {int param; int value; } ;
typedef TYPE_2__ drm_i915_setparam_t ;
struct TYPE_4__ {int allow_batchbuffer; } ;
struct TYPE_6__ {int fence_reg_start; int num_fence_regs; TYPE_1__ dri1; } ;
typedef TYPE_3__ drm_i915_private_t ;


 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;





__attribute__((used)) static int i915_setparam(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 drm_i915_setparam_t *param = data;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 switch (param->param) {
 case 128:
  break;
 case 129:
  break;
 case 131:
  dev_priv->dri1.allow_batchbuffer = param->value ? 1 : 0;
  break;
 case 130:
  if (param->value > dev_priv->num_fence_regs ||
      param->value < 0)
   return -EINVAL;

  dev_priv->fence_reg_start = param->value;
  break;
 default:
  DRM_DEBUG_DRIVER("unknown parameter %d\n",
     param->param);
  return -EINVAL;
 }

 return 0;
}
