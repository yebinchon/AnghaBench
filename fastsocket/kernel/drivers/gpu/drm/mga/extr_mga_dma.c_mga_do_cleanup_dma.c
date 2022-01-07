
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct drm_device {TYPE_3__* agp_buffer_map; TYPE_1__* agp; TYPE_2__* dev_private; scalar_t__ irq_enabled; } ;
struct drm_agp_buffer {scalar_t__ handle; } ;
struct drm_agp_binding {scalar_t__ handle; } ;
struct TYPE_5__ {scalar_t__ agp_handle; int * head; int * warp_pipe_phys; scalar_t__ warp_pipe; int prim; scalar_t__ used_new_dma_init; int * status; int * mmio; int * sarea_priv; int * sarea; TYPE_3__* primary; TYPE_3__* warp; scalar_t__ agp_size; int * agp_textures; } ;
typedef TYPE_2__ drm_mga_private_t ;
struct TYPE_6__ {scalar_t__ type; } ;
struct TYPE_4__ {scalar_t__ acquired; } ;


 int DRM_DEBUG (char*) ;
 scalar_t__ _DRM_CONSISTENT ;
 int drm_agp_free (struct drm_device*,struct drm_agp_buffer*) ;
 int drm_agp_release (struct drm_device*) ;
 int drm_agp_unbind (struct drm_device*,struct drm_agp_binding*) ;
 int drm_core_ioremapfree (TYPE_3__*,struct drm_device*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int memset (int *,int ,int) ;
 int mga_freelist_cleanup (struct drm_device*) ;

__attribute__((used)) static int mga_do_cleanup_dma(struct drm_device *dev, int full_cleanup)
{
 int err = 0;
 DRM_DEBUG("\n");





 if (dev->irq_enabled)
  drm_irq_uninstall(dev);

 if (dev->dev_private) {
  drm_mga_private_t *dev_priv = dev->dev_private;

  if ((dev_priv->warp != ((void*)0))
      && (dev_priv->warp->type != _DRM_CONSISTENT))
   drm_core_ioremapfree(dev_priv->warp, dev);

  if ((dev_priv->primary != ((void*)0))
      && (dev_priv->primary->type != _DRM_CONSISTENT))
   drm_core_ioremapfree(dev_priv->primary, dev);

  if (dev->agp_buffer_map != ((void*)0))
   drm_core_ioremapfree(dev->agp_buffer_map, dev);

  if (dev_priv->used_new_dma_init) {
  }

  dev_priv->warp = ((void*)0);
  dev_priv->primary = ((void*)0);
  dev_priv->sarea = ((void*)0);
  dev_priv->sarea_priv = ((void*)0);
  dev->agp_buffer_map = ((void*)0);

  if (full_cleanup) {
   dev_priv->mmio = ((void*)0);
   dev_priv->status = ((void*)0);
   dev_priv->used_new_dma_init = 0;
  }

  memset(&dev_priv->prim, 0, sizeof(dev_priv->prim));
  dev_priv->warp_pipe = 0;
  memset(dev_priv->warp_pipe_phys, 0,
         sizeof(dev_priv->warp_pipe_phys));

  if (dev_priv->head != ((void*)0))
   mga_freelist_cleanup(dev);
 }

 return err;
}
