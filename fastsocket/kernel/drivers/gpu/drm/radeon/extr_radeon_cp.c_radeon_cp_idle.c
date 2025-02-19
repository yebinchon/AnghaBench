
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_R600 ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RADEON_FAMILY_MASK ;
 int r600_do_cp_idle (TYPE_1__*) ;
 int radeon_do_cp_idle (TYPE_1__*) ;

int radeon_cp_idle(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  return r600_do_cp_idle(dev_priv);
 else
  return radeon_do_cp_idle(dev_priv);
}
