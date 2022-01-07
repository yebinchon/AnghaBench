
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int work; int hangcheck_timer; } ;
struct TYPE_13__ {scalar_t__ shrink; } ;
struct TYPE_10__ {int gtt_mtrr; int retire_work; TYPE_6__ inactive_shrinker; } ;
struct TYPE_9__ {int mappable_end; int mappable_base; int mappable; } ;
struct drm_i915_private {int bridge_dev; scalar_t__ slab; int pm_qos; int wq; int * regs; TYPE_3__ gpu_error; scalar_t__ child_dev_num; struct drm_i915_private* child_dev; int console_resume_work; TYPE_2__ mm; TYPE_1__ gtt; } ;
struct drm_device {struct drm_i915_private* dev_private; TYPE_4__* pdev; int struct_mutex; } ;
struct TYPE_12__ {scalar_t__ msi_enabled; } ;


 int DRIVER_MODESET ;
 int DRM_ERROR (char*,int) ;
 int I915_NEED_GFX_HWS (struct drm_device*) ;
 int acpi_video_unregister () ;
 int cancel_delayed_work_sync (int *) ;
 int cancel_work_sync (int *) ;
 int del_timer_sync (int *) ;
 int destroy_workqueue (int ) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int flush_workqueue (int ) ;
 int i915_destroy_error_state (struct drm_device*) ;
 int i915_free_hws (struct drm_device*) ;
 int i915_gem_cleanup_aliasing_ppgtt (struct drm_device*) ;
 int i915_gem_cleanup_ringbuffer (struct drm_device*) ;
 int i915_gem_cleanup_stolen (struct drm_device*) ;
 int i915_gem_context_fini (struct drm_device*) ;
 int i915_gem_free_all_phys_object (struct drm_device*) ;
 int i915_gem_retire_requests (struct drm_device*) ;
 int i915_gpu_idle (struct drm_device*) ;
 int i915_teardown_sysfs (struct drm_device*) ;
 int intel_fbdev_fini (struct drm_device*) ;
 int intel_gpu_ips_teardown () ;
 int intel_modeset_cleanup (struct drm_device*) ;
 int intel_opregion_fini (struct drm_device*) ;
 int intel_teardown_gmbus (struct drm_device*) ;
 int intel_teardown_mchbar (struct drm_device*) ;
 int io_mapping_free (int ) ;
 int kfree (struct drm_i915_private*) ;
 int kmem_cache_destroy (scalar_t__) ;
 int mtrr_del (int,int ,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pci_dev_put (int ) ;
 int pci_disable_msi (TYPE_4__*) ;
 int pci_iounmap (TYPE_4__*,int *) ;
 int pm_qos_remove_request (int *) ;
 int unregister_shrinker (TYPE_6__*) ;
 int vga_client_register (TYPE_4__*,int *,int *,int *) ;
 int vga_switcheroo_unregister_client (TYPE_4__*) ;

int i915_driver_unload(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 intel_gpu_ips_teardown();

 i915_teardown_sysfs(dev);

 if (dev_priv->mm.inactive_shrinker.shrink)
  unregister_shrinker(&dev_priv->mm.inactive_shrinker);

 mutex_lock(&dev->struct_mutex);
 ret = i915_gpu_idle(dev);
 if (ret)
  DRM_ERROR("failed to idle hardware: %d\n", ret);
 i915_gem_retire_requests(dev);
 mutex_unlock(&dev->struct_mutex);


 cancel_delayed_work_sync(&dev_priv->mm.retire_work);

 io_mapping_free(dev_priv->gtt.mappable);
 if (dev_priv->mm.gtt_mtrr >= 0) {
  mtrr_del(dev_priv->mm.gtt_mtrr,
    dev_priv->gtt.mappable_base,
    dev_priv->gtt.mappable_end);
  dev_priv->mm.gtt_mtrr = -1;
 }

 acpi_video_unregister();

 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  intel_fbdev_fini(dev);
  intel_modeset_cleanup(dev);
  cancel_work_sync(&dev_priv->console_resume_work);





  if (dev_priv->child_dev && dev_priv->child_dev_num) {
   kfree(dev_priv->child_dev);
   dev_priv->child_dev = ((void*)0);
   dev_priv->child_dev_num = 0;
  }

  vga_switcheroo_unregister_client(dev->pdev);
  vga_client_register(dev->pdev, ((void*)0), ((void*)0), ((void*)0));
 }


 del_timer_sync(&dev_priv->gpu_error.hangcheck_timer);
 cancel_work_sync(&dev_priv->gpu_error.work);
 i915_destroy_error_state(dev);

 if (dev->pdev->msi_enabled)
  pci_disable_msi(dev->pdev);

 intel_opregion_fini(dev);

 if (drm_core_check_feature(dev, DRIVER_MODESET)) {

  flush_workqueue(dev_priv->wq);

  mutex_lock(&dev->struct_mutex);
  i915_gem_free_all_phys_object(dev);
  i915_gem_cleanup_ringbuffer(dev);
  i915_gem_context_fini(dev);
  mutex_unlock(&dev->struct_mutex);
  i915_gem_cleanup_aliasing_ppgtt(dev);
  i915_gem_cleanup_stolen(dev);

  if (!I915_NEED_GFX_HWS(dev))
   i915_free_hws(dev);
 }

 if (dev_priv->regs != ((void*)0))
  pci_iounmap(dev->pdev, dev_priv->regs);

 intel_teardown_gmbus(dev);
 intel_teardown_mchbar(dev);

 destroy_workqueue(dev_priv->wq);
 pm_qos_remove_request(&dev_priv->pm_qos);

 if (dev_priv->slab)
  kmem_cache_destroy(dev_priv->slab);

 pci_dev_put(dev_priv->bridge_dev);
 kfree(dev->dev_private);

 return 0;
}
