
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int fb_heap; int gart_heap; scalar_t__ page_flipping; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int radeon_mem_release (struct drm_file*,int ) ;
 int radeon_surfaces_release (struct drm_file*,TYPE_1__*) ;

void radeon_driver_preclose(struct drm_device *dev, struct drm_file *file_priv)
{
 if (dev->dev_private) {
  drm_radeon_private_t *dev_priv = dev->dev_private;
  dev_priv->page_flipping = 0;
  radeon_mem_release(file_priv, dev_priv->gart_heap);
  radeon_mem_release(file_priv, dev_priv->fb_heap);
  radeon_surfaces_release(file_priv, dev_priv);
 }
}
