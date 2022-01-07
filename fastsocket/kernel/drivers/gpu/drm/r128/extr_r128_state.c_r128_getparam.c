
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int * dev_private; } ;
typedef int drm_r128_private_t ;
struct TYPE_2__ {int param; int value; } ;
typedef TYPE_1__ drm_r128_getparam_t ;


 int DEV_INIT_TEST_WITH_RETURN (int *) ;
 scalar_t__ DRM_COPY_TO_USER (int ,int*,int) ;
 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*,int ) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;

 int drm_dev_to_irq (struct drm_device*) ;

__attribute__((used)) static int r128_getparam(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_r128_private_t *dev_priv = dev->dev_private;
 drm_r128_getparam_t *param = data;
 int value;

 DEV_INIT_TEST_WITH_RETURN(dev_priv);

 DRM_DEBUG("pid=%d\n", DRM_CURRENTPID);

 switch (param->param) {
 case 128:
  value = drm_dev_to_irq(dev);
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
