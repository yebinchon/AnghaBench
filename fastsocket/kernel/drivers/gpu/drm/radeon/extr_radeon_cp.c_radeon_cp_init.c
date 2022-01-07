
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_6__ {int func; } ;
typedef TYPE_2__ drm_radeon_init_t ;


 int CHIP_R600 ;
 int EINVAL ;
 int LOCK_TEST_WITH_RETURN (struct drm_device*,struct drm_file*) ;

 int RADEON_FAMILY_MASK ;




 int r300_init_reg_flags (struct drm_device*) ;
 int r600_do_cleanup_cp (struct drm_device*) ;
 int r600_do_init_cp (struct drm_device*,TYPE_2__*,struct drm_file*) ;
 int radeon_do_cleanup_cp (struct drm_device*) ;
 int radeon_do_init_cp (struct drm_device*,TYPE_2__*,struct drm_file*) ;

int radeon_cp_init(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_init_t *init = data;

 LOCK_TEST_WITH_RETURN(dev, file_priv);

 if (init->func == 129)
  r300_init_reg_flags(dev);

 switch (init->func) {
 case 131:
 case 130:
 case 129:
  return radeon_do_init_cp(dev, init, file_priv);
 case 128:
  return r600_do_init_cp(dev, init, file_priv);
 case 132:
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
   return r600_do_cleanup_cp(dev);
  else
   return radeon_do_cleanup_cp(dev);
 }

 return -EINVAL;
}
