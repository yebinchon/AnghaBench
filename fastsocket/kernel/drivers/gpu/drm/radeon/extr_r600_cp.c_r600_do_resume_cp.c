
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int CHIP_RV770 ;
 int DRM_DEBUG (char*) ;
 int RADEON_FAMILY_MASK ;
 int r600_cp_init_ring_buffer (struct drm_device*,TYPE_1__*,struct drm_file*) ;
 int r600_cp_load_microcode (TYPE_1__*) ;
 int r600_do_engine_reset (struct drm_device*) ;
 int r600_vm_init (struct drm_device*) ;
 int r700_cp_load_microcode (TYPE_1__*) ;
 int r700_vm_init (struct drm_device*) ;

int r600_do_resume_cp(struct drm_device *dev, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 DRM_DEBUG("\n");
 if (((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_RV770)) {
  r700_vm_init(dev);
  r700_cp_load_microcode(dev_priv);
 } else {
  r600_vm_init(dev);
  r600_cp_load_microcode(dev_priv);
 }
 r600_cp_init_ring_buffer(dev, dev_priv, file_priv);
 r600_do_engine_reset(dev);

 return 0;
}
