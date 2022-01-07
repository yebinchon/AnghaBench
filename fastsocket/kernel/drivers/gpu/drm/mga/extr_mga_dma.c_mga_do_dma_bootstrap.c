
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
struct TYPE_6__ {int used_new_dma_init; int status; int mmio; int mmio_size; int mmio_base; } ;
typedef TYPE_1__ drm_mga_private_t ;
struct TYPE_7__ {scalar_t__ agp_mode; } ;
typedef TYPE_2__ drm_mga_dma_bootstrap_t ;


 int DRM_ERROR (char*,int) ;
 int MINIMAL_CLEANUP ;
 int SAREA_MAX ;
 int _DRM_KERNEL ;
 int _DRM_LOCKED ;
 int _DRM_READ_ONLY ;
 int _DRM_REGISTERS ;
 int _DRM_SHM ;
 int drm_addmap (struct drm_device*,int ,int ,int ,int,int *) ;
 scalar_t__ drm_pci_device_is_agp (struct drm_device*) ;
 int mga_do_agp_dma_bootstrap (struct drm_device*,TYPE_2__*) ;
 int mga_do_cleanup_dma (struct drm_device*,int ) ;
 int mga_do_pci_dma_bootstrap (struct drm_device*,TYPE_2__*) ;

__attribute__((used)) static int mga_do_dma_bootstrap(struct drm_device *dev,
    drm_mga_dma_bootstrap_t *dma_bs)
{
 const int is_agp = (dma_bs->agp_mode != 0) && drm_pci_device_is_agp(dev);
 int err;
 drm_mga_private_t *const dev_priv =
     (drm_mga_private_t *) dev->dev_private;

 dev_priv->used_new_dma_init = 1;




 err = drm_addmap(dev, dev_priv->mmio_base, dev_priv->mmio_size,
    _DRM_REGISTERS, _DRM_READ_ONLY, &dev_priv->mmio);
 if (err) {
  DRM_ERROR("Unable to map MMIO region: %d\n", err);
  return err;
 }

 err = drm_addmap(dev, 0, SAREA_MAX, _DRM_SHM,
    _DRM_READ_ONLY | _DRM_LOCKED | _DRM_KERNEL,
    &dev_priv->status);
 if (err) {
  DRM_ERROR("Unable to map status region: %d\n", err);
  return err;
 }






 if (is_agp)
  err = mga_do_agp_dma_bootstrap(dev, dma_bs);





 if (err)
  mga_do_cleanup_dma(dev, MINIMAL_CLEANUP);
 if (!is_agp || err)
  err = mga_do_pci_dma_bootstrap(dev, dma_bs);

 return err;
}
