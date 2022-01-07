
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_8__ {int flags; int cp_running; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_9__ {scalar_t__ idle; scalar_t__ flush; } ;
typedef TYPE_2__ drm_radeon_cp_stop_t ;


 int CHIP_R600 ;
 int DRM_DEBUG (char*) ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;
 int RADEON_FAMILY_MASK ;
 int r600_do_cp_idle (TYPE_1__*) ;
 int r600_do_cp_stop (TYPE_1__*) ;
 int r600_do_engine_reset (struct drm_device*) ;
 int radeon_do_cp_flush (TYPE_1__*) ;
 int radeon_do_cp_idle (TYPE_1__*) ;
 int radeon_do_cp_stop (TYPE_1__*) ;
 int radeon_do_engine_reset (struct drm_device*) ;

int radeon_cp_stop(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_cp_stop_t *stop = data;
 int ret;
 DRM_DEBUG("\n");

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (!dev_priv->cp_running)
  return 0;




 if (stop->flush) {
  radeon_do_cp_flush(dev_priv);
 }




 if (stop->idle) {
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
   ret = r600_do_cp_idle(dev_priv);
  else
   ret = radeon_do_cp_idle(dev_priv);
  if (ret)
   return ret;
 }





 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  r600_do_cp_stop(dev_priv);
 else
  radeon_do_cp_stop(dev_priv);


 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  r600_do_engine_reset(dev);
 else
  radeon_do_engine_reset(dev);

 return 0;
}
