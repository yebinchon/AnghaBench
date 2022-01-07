
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ current_page; scalar_t__ page_flipping; } ;
typedef TYPE_1__ drm_i810_private_t ;


 int DRM_DEBUG (char*) ;
 int i810_dma_dispatch_flip (struct drm_device*) ;

__attribute__((used)) static int i810_do_cleanup_pageflip(struct drm_device *dev)
{
 drm_i810_private_t *dev_priv = dev->dev_private;

 DRM_DEBUG("\n");
 if (dev_priv->current_page != 0)
  i810_dma_dispatch_flip(dev);

 dev_priv->page_flipping = 0;
 return 0;
}
