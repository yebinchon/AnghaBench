
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
struct TYPE_3__ {int func; } ;
typedef TYPE_1__ drm_i915_init_t ;


 int DRIVER_MODESET ;
 int EINVAL ;
 int ENODEV ;



 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_dma_cleanup (struct drm_device*) ;
 int i915_dma_resume (struct drm_device*) ;
 int i915_initialize (struct drm_device*,TYPE_1__*) ;

__attribute__((used)) static int i915_dma_init(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i915_init_t *init = data;
 int retcode = 0;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 switch (init->func) {
 case 129:
  retcode = i915_initialize(dev, init);
  break;
 case 130:
  retcode = i915_dma_cleanup(dev);
  break;
 case 128:
  retcode = i915_dma_resume(dev);
  break;
 default:
  retcode = -EINVAL;
  break;
 }

 return retcode;
}
