
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {scalar_t__ page_flipping; } ;
typedef TYPE_1__ drm_r128_private_t ;


 int r128_do_cleanup_pageflip (struct drm_device*) ;

void r128_driver_preclose(struct drm_device *dev, struct drm_file *file_priv)
{
 if (dev->dev_private) {
  drm_r128_private_t *dev_priv = dev->dev_private;
  if (dev_priv->page_flipping)
   r128_do_cleanup_pageflip(dev);
 }
}
