
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int * dev_private; } ;
typedef int drm_i915_private_t ;


 int DRIVER_MODESET ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int i915_dma_cleanup (struct drm_device*) ;
 int i915_gem_lastclose (struct drm_device*) ;
 int intel_fb_restore_mode (struct drm_device*) ;
 int vga_switcheroo_process_delayed_switch () ;

void i915_driver_lastclose(struct drm_device * dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;




 if (!dev_priv)
  return;

 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  intel_fb_restore_mode(dev);
  vga_switcheroo_process_delayed_switch();
  return;
 }

 i915_gem_lastclose(dev);

 i915_dma_cleanup(dev);
}
