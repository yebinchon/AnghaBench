
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int chipset; } ;
typedef TYPE_1__ drm_mga_private_t ;
struct TYPE_4__ {int param; int value; } ;
typedef TYPE_2__ drm_mga_getparam_t ;


 scalar_t__ DRM_COPY_TO_USER (int ,int*,int) ;
 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;


 int drm_dev_to_irq (struct drm_device*) ;

__attribute__((used)) static int mga_getparam(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_mga_private_t *dev_priv = dev->dev_private;
 drm_mga_getparam_t *param = data;
 int value;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 DRM_DEBUG("pid=%d\n", DRM_CURRENTPID);

 switch (param->param) {
 case 128:
  value = drm_dev_to_irq(dev);
  break;
 case 129:
  value = dev_priv->chipset;
  break;
 default:
  return -EINVAL;
 }

 if (DRM_COPY_TO_USER(param->value, &value, sizeof(int))) {
  DRM_ERROR("copy_to_user\n");
  return -EFAULT;
 }

 return 0;
}
