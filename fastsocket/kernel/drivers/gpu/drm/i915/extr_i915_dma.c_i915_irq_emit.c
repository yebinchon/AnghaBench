
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; int * dev_private; } ;
typedef int drm_i915_private_t ;
struct TYPE_3__ {int irq_seq; } ;
typedef TYPE_1__ drm_i915_irq_emit_t ;
struct TYPE_4__ {int virtual_start; } ;


 int DRIVER_MODESET ;
 scalar_t__ DRM_COPY_TO_USER (int ,int*,int) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int ENODEV ;
 TYPE_2__* LP_RING (int *) ;
 int RING_LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_emit_irq (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int i915_irq_emit(struct drm_device *dev, void *data,
    struct drm_file *file_priv)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 drm_i915_irq_emit_t *emit = data;
 int result;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;

 if (!dev_priv || !LP_RING(dev_priv)->virtual_start) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 RING_LOCK_TEST_WITH_RETURN(dev, file_priv);

 mutex_lock(&dev->struct_mutex);
 result = i915_emit_irq(dev);
 mutex_unlock(&dev->struct_mutex);

 if (DRM_COPY_TO_USER(emit->irq_seq, &result, sizeof(int))) {
  DRM_ERROR("copy_to_user\n");
  return -EFAULT;
 }

 return 0;
}
