
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {int struct_mutex; scalar_t__ dev_private; } ;
struct TYPE_3__ {int vram_initialized; int vram_offset; int vram_mm; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int size; int offset; } ;
typedef TYPE_2__ drm_via_fb_t ;


 int DRM_DEBUG (char*,int ,int) ;
 int VIA_MM_ALIGN_SHIFT ;
 int drm_mm_init (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int via_fb_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_via_fb_t *fb = data;
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;

 mutex_lock(&dev->struct_mutex);
 drm_mm_init(&dev_priv->vram_mm, 0, fb->size >> VIA_MM_ALIGN_SHIFT);

 dev_priv->vram_initialized = 1;
 dev_priv->vram_offset = fb->offset;

 mutex_unlock(&dev->struct_mutex);
 DRM_DEBUG("offset = %u, size = %u\n", fb->offset, fb->size);

 return 0;

}
