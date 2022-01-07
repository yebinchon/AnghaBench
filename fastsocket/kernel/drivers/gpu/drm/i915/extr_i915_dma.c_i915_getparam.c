
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int pci_device; TYPE_1__* pdev; TYPE_4__* dev_private; } ;
struct TYPE_10__ {int aliasing_ppgtt; } ;
struct TYPE_9__ {int allow_batchbuffer; } ;
struct TYPE_11__ {int num_fence_regs; int fence_reg_start; TYPE_3__ mm; int * ring; int overlay; TYPE_2__ dri1; } ;
typedef TYPE_4__ drm_i915_private_t ;
struct TYPE_12__ {int param; int value; } ;
typedef TYPE_5__ drm_i915_getparam_t ;
struct TYPE_13__ {int gen; } ;
struct TYPE_8__ {int irq; } ;


 size_t BCS ;
 int CAP_SYS_ADMIN ;
 scalar_t__ DRM_COPY_TO_USER (int ,int*,int) ;
 int DRM_DEBUG_DRIVER (char*,int) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int HAS_LLC (struct drm_device*) ;
 TYPE_7__* INTEL_INFO (struct drm_device*) ;
 int READ_BREADCRUMB (TYPE_4__*) ;
 size_t VCS ;
 int capable (int ) ;
 int i915_semaphore_is_enabled (struct drm_device*) ;
 int intel_ring_initialized (int *) ;

__attribute__((used)) static int i915_getparam(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 drm_i915_getparam_t *param = data;
 int value;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 switch (param->param) {
 case 130:
  value = dev->pdev->irq ? 1 : 0;
  break;
 case 152:
  value = dev_priv->dri1.allow_batchbuffer ? 1 : 0;
  break;
 case 129:
  value = READ_BREADCRUMB(dev_priv);
  break;
 case 151:
  value = dev->pci_device;
  break;
 case 142:
  value = 1;
  break;
 case 128:
  value = dev_priv->num_fence_regs - dev_priv->fence_reg_start;
  break;
 case 139:
  value = dev_priv->overlay ? 1 : 0;
  break;
 case 138:
  value = 1;
  break;
 case 146:

  value = 1;
  break;
 case 148:
  value = intel_ring_initialized(&dev_priv->ring[VCS]);
  break;
 case 149:
  value = intel_ring_initialized(&dev_priv->ring[BCS]);
  break;
 case 134:
  value = 1;
  break;
 case 147:
  value = 1;
  break;
 case 145:
  value = INTEL_INFO(dev)->gen >= 4;
  break;
 case 135:
  value = 1;
  break;
 case 141:
  value = 1;
  break;
 case 140:
  value = HAS_LLC(dev);
  break;
 case 150:
  value = dev_priv->mm.aliasing_ppgtt ? 1 : 0;
  break;
 case 131:
  value = 1;
  break;
 case 132:
  value = i915_semaphore_is_enabled(dev);
  break;
 case 136:
  value = 1;
  break;
 case 133:
  value = capable(CAP_SYS_ADMIN);
  break;
 case 137:
  value = 1;
  break;
 case 143:
  value = 1;
  break;
 case 144:
  value = 1;
  break;
 default:
  DRM_DEBUG_DRIVER("Unknown parameter %d\n",
     param->param);
  return -EINVAL;
 }

 if (DRM_COPY_TO_USER(param->value, &value, sizeof(int))) {
  DRM_ERROR("DRM_COPY_TO_USER failed\n");
  return -EFAULT;
 }

 return 0;
}
