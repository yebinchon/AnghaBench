
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device_dma {int buf_count; struct drm_buf** buflist; } ;
struct drm_device {int * dev_private; int pdev; scalar_t__ irq_enabled; struct drm_device_dma* dma; } ;
struct drm_buf {scalar_t__ total; TYPE_3__* dev_private; } ;
struct TYPE_4__ {int map; scalar_t__ virtual_start; } ;
struct TYPE_5__ {int dma_status_page; scalar_t__ hw_status_page; TYPE_1__ ring; } ;
typedef TYPE_2__ drm_i810_private_t ;
struct TYPE_6__ {int map; scalar_t__ kernel_virtual; } ;
typedef TYPE_3__ drm_i810_buf_priv_t ;


 int DRIVER_HAVE_IRQ ;
 int PAGE_SIZE ;
 scalar_t__ drm_core_check_feature (struct drm_device*,int ) ;
 int drm_core_ioremapfree (int *,struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int kfree (int *) ;
 int pci_free_consistent (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static int i810_dma_cleanup(struct drm_device *dev)
{
 struct drm_device_dma *dma = dev->dma;





 if (drm_core_check_feature(dev, DRIVER_HAVE_IRQ) && dev->irq_enabled)
  drm_irq_uninstall(dev);

 if (dev->dev_private) {
  int i;
  drm_i810_private_t *dev_priv =
      (drm_i810_private_t *) dev->dev_private;

  if (dev_priv->ring.virtual_start)
   drm_core_ioremapfree(&dev_priv->ring.map, dev);
  if (dev_priv->hw_status_page) {
   pci_free_consistent(dev->pdev, PAGE_SIZE,
         dev_priv->hw_status_page,
         dev_priv->dma_status_page);
  }
  kfree(dev->dev_private);
  dev->dev_private = ((void*)0);

  for (i = 0; i < dma->buf_count; i++) {
   struct drm_buf *buf = dma->buflist[i];
   drm_i810_buf_priv_t *buf_priv = buf->dev_private;

   if (buf_priv->kernel_virtual && buf->total)
    drm_core_ioremapfree(&buf_priv->map, dev);
  }
 }
 return 0;
}
