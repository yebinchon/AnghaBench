
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; void* dev_private; } ;
struct TYPE_3__ {unsigned long flags; int mmio; } ;
typedef TYPE_1__ drm_radeon_private_t ;
 int DRM_DEBUG (char*,char*) ;
 int ENOMEM ;
 int GFP_KERNEL ;
 unsigned long RADEON_FAMILY_MASK ;
 unsigned long RADEON_HAS_HIERZ ;
 int RADEON_IS_AGP ;
 int RADEON_IS_PCI ;
 int RADEON_IS_PCIE ;
 int _DRM_DRIVER ;
 int _DRM_READ_ONLY ;
 int _DRM_REGISTERS ;
 int drm_addmap (struct drm_device*,int ,int ,int ,int,int *) ;
 scalar_t__ drm_pci_device_is_agp (struct drm_device*) ;
 int drm_vblank_init (struct drm_device*,int) ;
 TYPE_1__* kzalloc (int,int ) ;
 scalar_t__ pci_is_pcie (int ) ;
 int pci_resource_len (int ,int) ;
 int pci_resource_start (int ,int) ;
 int pci_set_master (int ) ;
 int radeon_driver_unload (struct drm_device*) ;

int radeon_driver_load(struct drm_device *dev, unsigned long flags)
{
 drm_radeon_private_t *dev_priv;
 int ret = 0;

 dev_priv = kzalloc(sizeof(drm_radeon_private_t), GFP_KERNEL);
 if (dev_priv == ((void*)0))
  return -ENOMEM;

 dev->dev_private = (void *)dev_priv;
 dev_priv->flags = flags;

 switch (flags & RADEON_FAMILY_MASK) {
 case 139:
 case 131:
 case 138:
 case 137:
 case 136:
 case 135:
 case 134:
 case 130:
 case 129:
 case 133:
 case 128:
 case 132:
  dev_priv->flags |= RADEON_HAS_HIERZ;
  break;
 default:

  break;
 }

 pci_set_master(dev->pdev);

 if (drm_pci_device_is_agp(dev))
  dev_priv->flags |= RADEON_IS_AGP;
 else if (pci_is_pcie(dev->pdev))
  dev_priv->flags |= RADEON_IS_PCIE;
 else
  dev_priv->flags |= RADEON_IS_PCI;

 ret = drm_addmap(dev, pci_resource_start(dev->pdev, 2),
    pci_resource_len(dev->pdev, 2), _DRM_REGISTERS,
    _DRM_READ_ONLY | _DRM_DRIVER, &dev_priv->mmio);
 if (ret != 0)
  return ret;

 ret = drm_vblank_init(dev, 2);
 if (ret) {
  radeon_driver_unload(dev);
  return ret;
 }

 DRM_DEBUG("%s card detected\n",
    ((dev_priv->flags & RADEON_IS_AGP) ? "AGP" : (((dev_priv->flags & RADEON_IS_PCIE) ? "PCIE" : "PCI"))));
 return ret;
}
