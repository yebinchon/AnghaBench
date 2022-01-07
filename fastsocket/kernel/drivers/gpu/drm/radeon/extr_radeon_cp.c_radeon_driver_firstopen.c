
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {int pdev; TYPE_2__* dev_private; } ;
struct TYPE_3__ {int table_size; } ;
struct TYPE_4__ {int fb_aper_offset; TYPE_1__ gart_info; } ;
typedef TYPE_2__ drm_radeon_private_t ;
typedef int drm_local_map_t ;


 int RADEON_PCIGART_TABLE_SIZE ;
 int _DRM_FRAME_BUFFER ;
 int _DRM_WRITE_COMBINING ;
 int drm_addmap (struct drm_device*,int ,int ,int ,int ,int **) ;
 int pci_resource_len (int ,int ) ;
 int pci_resource_start (int ,int ) ;

int radeon_driver_firstopen(struct drm_device *dev)
{
 int ret;
 drm_local_map_t *map;
 drm_radeon_private_t *dev_priv = dev->dev_private;

 dev_priv->gart_info.table_size = RADEON_PCIGART_TABLE_SIZE;

 dev_priv->fb_aper_offset = pci_resource_start(dev->pdev, 0);
 ret = drm_addmap(dev, dev_priv->fb_aper_offset,
    pci_resource_len(dev->pdev, 0), _DRM_FRAME_BUFFER,
    _DRM_WRITE_COMBINING, &map);
 if (ret != 0)
  return ret;

 return 0;
}
