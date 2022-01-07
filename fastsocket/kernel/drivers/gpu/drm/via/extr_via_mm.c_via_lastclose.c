
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {int struct_mutex; scalar_t__ dev_private; } ;
struct TYPE_2__ {scalar_t__ agp_initialized; int agp_mm; scalar_t__ vram_initialized; int vram_mm; } ;
typedef TYPE_1__ drm_via_private_t ;


 int drm_mm_takedown (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void via_lastclose(struct drm_device *dev)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

 if (!dev_priv)
  return;

 mutex_lock(&dev->struct_mutex);
 if (dev_priv->vram_initialized) {
  drm_mm_takedown(&dev_priv->vram_mm);
  dev_priv->vram_initialized = 0;
 }
 if (dev_priv->agp_initialized) {
  drm_mm_takedown(&dev_priv->agp_mm);
  dev_priv->agp_initialized = 0;
 }
 mutex_unlock(&dev->struct_mutex);
}
