
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; int * agp_buffer_map; scalar_t__ irq_enabled; } ;
struct TYPE_5__ {scalar_t__ bus_addr; } ;
struct TYPE_4__ {TYPE_3__ gart_info; int * ring_rptr; int * cce_ring; int is_pci; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int DRM_ERROR (char*) ;
 int drm_ati_pcigart_cleanup (struct drm_device*,TYPE_3__*) ;
 int drm_core_ioremapfree (int *,struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int kfree (TYPE_1__*) ;

int r128_do_cleanup_cce(struct drm_device *dev)
{





 if (dev->irq_enabled)
  drm_irq_uninstall(dev);

 if (dev->dev_private) {
  drm_r128_private_t *dev_priv = dev->dev_private;
  {
   if (dev_priv->gart_info.bus_addr)
    if (!drm_ati_pcigart_cleanup(dev,
       &dev_priv->gart_info))
     DRM_ERROR
         ("failed to cleanup PCI GART!\n");
  }

  kfree(dev->dev_private);
  dev->dev_private = ((void*)0);
 }

 return 0;
}
