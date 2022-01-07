
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int counters; int * types; int pdev; void* dev_private; } ;
struct TYPE_3__ {unsigned long chipset; int mmio_size; int mmio_base; int usec_timeout; } ;
typedef TYPE_1__ drm_mga_private_t ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MGA_DEFAULT_USEC_TIMEOUT ;
 int _DRM_STAT_IRQ ;
 int _DRM_STAT_PRIMARY ;
 int _DRM_STAT_SECONDARY ;
 int drm_vblank_init (struct drm_device*,int) ;
 TYPE_1__* kzalloc (int,int ) ;
 int mga_driver_unload (struct drm_device*) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int pci_set_master (int ) ;

int mga_driver_load(struct drm_device *dev, unsigned long flags)
{
 drm_mga_private_t *dev_priv;
 int ret;

 dev_priv = kzalloc(sizeof(drm_mga_private_t), GFP_KERNEL);
 if (!dev_priv)
  return -ENOMEM;

 dev->dev_private = (void *)dev_priv;

 dev_priv->usec_timeout = MGA_DEFAULT_USEC_TIMEOUT;
 dev_priv->chipset = flags;

 pci_set_master(dev->pdev);

 dev_priv->mmio_base = pci_resource_start(dev->pdev, 1);
 dev_priv->mmio_size = pci_resource_len(dev->pdev, 1);

 dev->counters += 3;
 dev->types[6] = _DRM_STAT_IRQ;
 dev->types[7] = _DRM_STAT_PRIMARY;
 dev->types[8] = _DRM_STAT_SECONDARY;

 ret = drm_vblank_init(dev, 1);

 if (ret) {
  (void) mga_driver_unload(dev);
  return ret;
 }

 return 0;
}
