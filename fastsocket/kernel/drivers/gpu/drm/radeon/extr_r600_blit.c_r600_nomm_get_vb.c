
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {int blit_vb; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_ERROR (char*) ;
 int EAGAIN ;
 int radeon_freelist_get (struct drm_device*) ;

__attribute__((used)) static int r600_nomm_get_vb(struct drm_device *dev)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 dev_priv->blit_vb = radeon_freelist_get(dev);
 if (!dev_priv->blit_vb) {
  DRM_ERROR("Unable to allocate vertex buffer for blit\n");
  return -EAGAIN;
 }
 return 0;
}
