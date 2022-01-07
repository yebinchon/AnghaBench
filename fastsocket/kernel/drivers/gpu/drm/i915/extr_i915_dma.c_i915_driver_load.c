
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_device_info {int gen; } ;
struct TYPE_14__ {int (* gtt_remove ) (struct drm_device*) ;int * mappable; int mappable_base; int mappable_end; } ;
struct TYPE_15__ {scalar_t__ shrink; } ;
struct TYPE_13__ {int suspended; int gtt_mtrr; TYPE_5__ inactive_shrinker; } ;
struct TYPE_12__ {int hw_lock; int lock; } ;
struct TYPE_11__ {int lock; } ;
struct drm_i915_private {int num_pipe; int bridge_dev; TYPE_4__ gtt; int regs; TYPE_3__ mm; int * wq; int modeset_restore_lock; TYPE_2__ rps; int dpio_lock; TYPE_1__ gpu_error; int irq_lock; struct intel_device_info* info; struct drm_device* dev; } ;
struct drm_device {int counters; TYPE_6__* pdev; void* dev_private; int * types; } ;
typedef int drm_i915_private_t ;
struct TYPE_16__ {scalar_t__ msi_enabled; int dev; } ;


 int DMA_BIT_MASK (int) ;
 int DRIVER_MODESET ;
 int DRM_ERROR (char*) ;
 int EIO ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_BROADWATER (struct drm_device*) ;
 scalar_t__ IS_CRESTLINE (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_HASWELL (struct drm_device*) ;
 int IS_I945G (struct drm_device*) ;
 int IS_I945GM (struct drm_device*) ;
 scalar_t__ IS_IVYBRIDGE (struct drm_device*) ;
 scalar_t__ IS_MOBILE (struct drm_device*) ;
 int _DRM_STAT_DMA ;
 int _DRM_STAT_IRQ ;
 int _DRM_STAT_PRIMARY ;
 int _DRM_STAT_SECONDARY ;
 int acpi_video_register () ;
 int * alloc_ordered_workqueue (char*,int ) ;
 int destroy_workqueue (int *) ;
 int dma_set_coherent_mask (int *,int ) ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_vblank_init (struct drm_device*,int) ;
 int i915_dump_device_info (struct drm_i915_private*) ;
 int i915_gem_gtt_init (struct drm_device*) ;
 int i915_gem_load (struct drm_device*) ;
 scalar_t__ i915_get_bridge_dev (struct drm_device*) ;
 int i915_kick_out_firmware_fb (struct drm_i915_private*) ;
 int i915_load_modeset_init (struct drm_device*) ;
 int i915_mtrr_setup (struct drm_i915_private*,int ,int ) ;
 int i915_setup_sysfs (struct drm_device*) ;
 int intel_detect_pch (struct drm_device*) ;
 int intel_gpu_ips_init (struct drm_i915_private*) ;
 int intel_gt_init (struct drm_device*) ;
 int intel_irq_init (struct drm_device*) ;
 int intel_opregion_init (struct drm_device*) ;
 int intel_opregion_setup (struct drm_device*) ;
 int intel_setup_bios (struct drm_device*) ;
 int intel_setup_gmbus (struct drm_device*) ;
 int intel_setup_mchbar (struct drm_device*) ;
 int intel_teardown_gmbus (struct drm_device*) ;
 int intel_teardown_mchbar (struct drm_device*) ;
 int * io_mapping_create_wc (int ,int ) ;
 int io_mapping_free (int *) ;
 int kfree (struct drm_i915_private*) ;
 struct drm_i915_private* kzalloc (int,int ) ;
 int mtrr_del (int,int ,int ) ;
 int mutex_init (int *) ;
 int pci_dev_put (int ) ;
 int pci_disable_msi (TYPE_6__*) ;
 int pci_enable_msi (TYPE_6__*) ;
 int pci_iomap (TYPE_6__*,int,int) ;
 int pci_iounmap (TYPE_6__*,int ) ;
 int pci_set_master (TYPE_6__*) ;
 int spin_lock_init (int *) ;
 int stub1 (struct drm_device*) ;
 int unregister_shrinker (TYPE_5__*) ;

int i915_driver_load(struct drm_device *dev, unsigned long flags)
{
 struct drm_i915_private *dev_priv;
 struct intel_device_info *info;
 int ret = 0, mmio_bar, mmio_size;
 uint32_t aperture_size;

 info = (struct intel_device_info *) flags;


 if (info->gen >= 6 && !drm_core_check_feature(dev, DRIVER_MODESET))
  return -ENODEV;


 dev->counters += 4;
 dev->types[6] = _DRM_STAT_IRQ;
 dev->types[7] = _DRM_STAT_PRIMARY;
 dev->types[8] = _DRM_STAT_SECONDARY;
 dev->types[9] = _DRM_STAT_DMA;

 dev_priv = kzalloc(sizeof(drm_i915_private_t), GFP_KERNEL);
 if (dev_priv == ((void*)0))
  return -ENOMEM;

 dev->dev_private = (void *)dev_priv;
 dev_priv->dev = dev;
 dev_priv->info = info;

 i915_dump_device_info(dev_priv);

 if (i915_get_bridge_dev(dev)) {
  ret = -EIO;
  goto free_priv;
 }

 ret = i915_gem_gtt_init(dev);
 if (ret)
  goto put_bridge;

 if (drm_core_check_feature(dev, DRIVER_MODESET))
  i915_kick_out_firmware_fb(dev_priv);

 pci_set_master(dev->pdev);


 if (IS_GEN2(dev))
  dma_set_coherent_mask(&dev->pdev->dev, DMA_BIT_MASK(30));
 if (IS_BROADWATER(dev) || IS_CRESTLINE(dev))
  dma_set_coherent_mask(&dev->pdev->dev, DMA_BIT_MASK(32));

 mmio_bar = IS_GEN2(dev) ? 1 : 0;







 if (info->gen < 5)
  mmio_size = 512*1024;
 else
  mmio_size = 2*1024*1024;

 dev_priv->regs = pci_iomap(dev->pdev, mmio_bar, mmio_size);
 if (!dev_priv->regs) {
  DRM_ERROR("failed to map registers\n");
  ret = -EIO;
  goto put_gmch;
 }

 aperture_size = dev_priv->gtt.mappable_end;

 dev_priv->gtt.mappable =
  io_mapping_create_wc(dev_priv->gtt.mappable_base,
         aperture_size);
 if (dev_priv->gtt.mappable == ((void*)0)) {
  ret = -EIO;
  goto out_rmmap;
 }

 i915_mtrr_setup(dev_priv, dev_priv->gtt.mappable_base,
   aperture_size);
 dev_priv->wq = alloc_ordered_workqueue("i915", 0);
 if (dev_priv->wq == ((void*)0)) {
  DRM_ERROR("Failed to create our workqueue.\n");
  ret = -ENOMEM;
  goto out_mtrrfree;
 }


 intel_detect_pch(dev);

 intel_irq_init(dev);
 intel_gt_init(dev);


 intel_setup_mchbar(dev);
 intel_setup_gmbus(dev);
 intel_opregion_setup(dev);

 intel_setup_bios(dev);

 i915_gem_load(dev);
 if (!IS_I945G(dev) && !IS_I945GM(dev))
  pci_enable_msi(dev->pdev);

 spin_lock_init(&dev_priv->irq_lock);
 spin_lock_init(&dev_priv->gpu_error.lock);
 spin_lock_init(&dev_priv->rps.lock);
 mutex_init(&dev_priv->dpio_lock);

 mutex_init(&dev_priv->rps.hw_lock);
 mutex_init(&dev_priv->modeset_restore_lock);

 if (IS_IVYBRIDGE(dev) || IS_HASWELL(dev))
  dev_priv->num_pipe = 3;
 else if (IS_MOBILE(dev) || !IS_GEN2(dev))
  dev_priv->num_pipe = 2;
 else
  dev_priv->num_pipe = 1;

 ret = drm_vblank_init(dev, dev_priv->num_pipe);
 if (ret)
  goto out_gem_unload;


 dev_priv->mm.suspended = 1;

 if (drm_core_check_feature(dev, DRIVER_MODESET)) {
  ret = i915_load_modeset_init(dev);
  if (ret < 0) {
   DRM_ERROR("failed to init modeset\n");
   goto out_gem_unload;
  }
 }

 i915_setup_sysfs(dev);


 intel_opregion_init(dev);
 acpi_video_register();

 if (IS_GEN5(dev))
  intel_gpu_ips_init(dev_priv);

 return 0;

out_gem_unload:
 if (dev_priv->mm.inactive_shrinker.shrink)
  unregister_shrinker(&dev_priv->mm.inactive_shrinker);

 if (dev->pdev->msi_enabled)
  pci_disable_msi(dev->pdev);

 intel_teardown_gmbus(dev);
 intel_teardown_mchbar(dev);
 destroy_workqueue(dev_priv->wq);
out_mtrrfree:
 if (dev_priv->mm.gtt_mtrr >= 0) {
  mtrr_del(dev_priv->mm.gtt_mtrr,
    dev_priv->gtt.mappable_base,
    aperture_size);
  dev_priv->mm.gtt_mtrr = -1;
 }
 io_mapping_free(dev_priv->gtt.mappable);
out_rmmap:
 pci_iounmap(dev->pdev, dev_priv->regs);
put_gmch:
 dev_priv->gtt.gtt_remove(dev);
put_bridge:
 pci_dev_put(dev_priv->bridge_dev);
free_priv:
 kfree(dev_priv);
 return ret;
}
