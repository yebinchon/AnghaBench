
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_device {int ctx_count; scalar_t__ dev_private; } ;
typedef int drm_via_private_t ;


 int DRM_DEBUG (char*) ;
 int drm_irq_uninstall (struct drm_device*) ;
 int via_cleanup_futex (int *) ;
 int via_do_cleanup_map (struct drm_device*) ;
 int via_release_futex (int *,int) ;

int via_final_context(struct drm_device *dev, int context)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

 via_release_futex(dev_priv, context);



 if (dev->ctx_count == 1 && dev->dev_private) {
  DRM_DEBUG("Last Context\n");
  drm_irq_uninstall(dev);
  via_cleanup_futex(dev_priv);
  via_do_cleanup_map(dev);
 }
 return 1;
}
