
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int dummy; } ;
typedef int drm_dma_handle_t ;


 int __drm_pci_free (struct drm_device*,int *) ;
 int kfree (int *) ;

void drm_pci_free(struct drm_device * dev, drm_dma_handle_t * dmah)
{
 __drm_pci_free(dev, dmah);
 kfree(dmah);
}
