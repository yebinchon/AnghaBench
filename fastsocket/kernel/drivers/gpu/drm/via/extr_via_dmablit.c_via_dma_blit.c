
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_file {int dummy; } ;
struct drm_device {int dummy; } ;
typedef int drm_via_dmablit_t ;


 int via_dmablit (struct drm_device*,int *) ;

int
via_dma_blit(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_dmablit_t *xfer = data;
 int err;

 err = via_dmablit(dev, xfer);

 return err;
}
