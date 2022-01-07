
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;


 int intel_modeset_init_hw (struct drm_device*) ;
 int intel_modeset_setup_hw_state (struct drm_device*,int) ;
 int intel_setup_overlay (struct drm_device*) ;

void intel_modeset_gem_init(struct drm_device *dev)
{
 intel_modeset_init_hw(dev);

 intel_setup_overlay(dev);

 intel_modeset_setup_hw_state(dev, 0);
}
