
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ suspended; } ;
struct drm_i915_private {int enable_hotplug_processing; TYPE_1__ mm; int console_resume_work; } ;
struct drm_device {int vblank_disable_allowed; int pdev; int struct_mutex; struct drm_i915_private* dev_private; } ;


 int DRM_INFO (char*) ;
 int ENODEV ;
 int INIT_WORK (int *,int ) ;
 int drm_irq_install (struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int drm_kms_helper_poll_init (struct drm_device*) ;
 int i915_gem_cleanup_aliasing_ppgtt (struct drm_device*) ;
 int i915_gem_cleanup_ringbuffer (struct drm_device*) ;
 int i915_gem_cleanup_stolen (struct drm_device*) ;
 int i915_gem_init (struct drm_device*) ;
 int i915_gem_init_stolen (struct drm_device*) ;
 int i915_switcheroo_ops ;
 int * i915_vga_set_decode ;
 int intel_console_resume ;
 int intel_fbdev_init (struct drm_device*) ;
 int intel_fbdev_initial_config (struct drm_device*) ;
 int intel_hpd_init (struct drm_device*) ;
 int intel_modeset_gem_init (struct drm_device*) ;
 int intel_modeset_init (struct drm_device*) ;
 int intel_parse_bios (struct drm_device*) ;
 int intel_register_dsm_handler () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int vga_client_register (int ,struct drm_device*,int *,int *) ;
 int vga_switcheroo_register_client (int ,int *) ;
 int vga_switcheroo_unregister_client (int ) ;

__attribute__((used)) static int i915_load_modeset_init(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 ret = intel_parse_bios(dev);
 if (ret)
  DRM_INFO("failed to find VBIOS tables\n");
 ret = vga_client_register(dev->pdev, dev, ((void*)0), i915_vga_set_decode);
 if (ret && ret != -ENODEV)
  goto out;

 intel_register_dsm_handler();

 ret = vga_switcheroo_register_client(dev->pdev, &i915_switcheroo_ops);
 if (ret)
  goto cleanup_vga_client;




 ret = i915_gem_init_stolen(dev);
 if (ret)
  goto cleanup_vga_switcheroo;

 ret = drm_irq_install(dev);
 if (ret)
  goto cleanup_gem_stolen;



 intel_modeset_init(dev);

 ret = i915_gem_init(dev);
 if (ret)
  goto cleanup_irq;

 INIT_WORK(&dev_priv->console_resume_work, intel_console_resume);

 intel_modeset_gem_init(dev);



 dev->vblank_disable_allowed = 1;

 ret = intel_fbdev_init(dev);
 if (ret)
  goto cleanup_gem;


 intel_hpd_init(dev);
 intel_fbdev_initial_config(dev);


 dev_priv->enable_hotplug_processing = 1;

 drm_kms_helper_poll_init(dev);


 dev_priv->mm.suspended = 0;

 return 0;

cleanup_gem:
 mutex_lock(&dev->struct_mutex);
 i915_gem_cleanup_ringbuffer(dev);
 mutex_unlock(&dev->struct_mutex);
 i915_gem_cleanup_aliasing_ppgtt(dev);
cleanup_irq:
 drm_irq_uninstall(dev);
cleanup_gem_stolen:
 i915_gem_cleanup_stolen(dev);
cleanup_vga_switcheroo:
 vga_switcheroo_unregister_client(dev->pdev);
cleanup_vga_client:
 vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));
out:
 return ret;
}
