
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int counters; int pdev; int * types; } ;


 int _DRM_STAT_DMA ;
 int _DRM_STAT_IRQ ;
 int _DRM_STAT_PRIMARY ;
 int _DRM_STAT_SECONDARY ;
 int pci_set_master (int ) ;

int i810_driver_load(struct drm_device *dev, unsigned long flags)
{

 dev->counters += 4;
 dev->types[6] = _DRM_STAT_IRQ;
 dev->types[7] = _DRM_STAT_PRIMARY;
 dev->types[8] = _DRM_STAT_SECONDARY;
 dev->types[9] = _DRM_STAT_DMA;

 pci_set_master(dev->pdev);

 return 0;
}
