
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_5__ {int flags; scalar_t__ have_z_offset; } ;
typedef TYPE_1__ drm_radeon_private_t ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int RADEON_IS_AGP ;
 int RADEON_SW_INT_ENABLE ;
 int radeon_cp_init_ring_buffer (struct drm_device*,TYPE_1__*,struct drm_file*) ;
 int radeon_cp_load_microcode (TYPE_1__*) ;
 int radeon_do_engine_reset (struct drm_device*) ;
 int radeon_irq_set_state (struct drm_device*,int ,int) ;
 int radeon_set_pcigart (TYPE_1__*,int) ;

__attribute__((used)) static int radeon_do_resume_cp(struct drm_device *dev, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;

 if (!dev_priv) {
  DRM_ERROR("Called with no initialization\n");
  return -EINVAL;
 }

 DRM_DEBUG("Starting radeon_do_resume_cp()\n");







 {

  radeon_set_pcigart(dev_priv, 1);
 }

 radeon_cp_load_microcode(dev_priv);
 radeon_cp_init_ring_buffer(dev, dev_priv, file_priv);

 dev_priv->have_z_offset = 0;
 radeon_do_engine_reset(dev);
 radeon_irq_set_state(dev, RADEON_SW_INT_ENABLE, 1);

 DRM_DEBUG("radeon_do_resume_cp() complete\n");

 return 0;
}
