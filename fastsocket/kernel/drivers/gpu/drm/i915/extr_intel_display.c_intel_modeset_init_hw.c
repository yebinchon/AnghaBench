
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int struct_mutex; } ;


 int intel_enable_gt_powersave (struct drm_device*) ;
 int intel_init_clock_gating (struct drm_device*) ;
 int intel_init_power_well (struct drm_device*) ;
 int intel_prepare_ddi (struct drm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void intel_modeset_init_hw(struct drm_device *dev)
{
 intel_init_power_well(dev);

 intel_prepare_ddi(dev);

 intel_init_clock_gating(dev);

 mutex_lock(&dev->struct_mutex);
 intel_enable_gt_powersave(dev);
 mutex_unlock(&dev->struct_mutex);
}
