
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_3__* dev_private; } ;
struct TYPE_7__ {int last_clear_reads; int last_frame_reads; } ;
struct TYPE_9__ {int gart_buffers_offset; int flags; int gart_vm_start; int ring_rptr_offset; int gart_textures_offset; int num_gb_pipes; int num_z_pipes; int writeback_works; TYPE_2__* mmio; TYPE_1__ stats; } ;
typedef TYPE_3__ drm_radeon_private_t ;
struct TYPE_10__ {int param; int value; } ;
typedef TYPE_4__ drm_radeon_getparam_t ;
struct TYPE_8__ {int offset; } ;


 int CHIP_R600 ;
 scalar_t__ DRM_COPY_TO_USER (int ,int*,int) ;
 int DRM_CURRENTPID ;
 int DRM_DEBUG (char*,int) ;
 int DRM_ERROR (char*) ;
 int EFAULT ;
 int EINVAL ;
 int GET_SCRATCH (TYPE_3__*,int) ;
 int R600_SCRATCH_REG_OFFSET ;
 int RADEON_CARD_AGP ;
 int RADEON_CARD_PCI ;
 int RADEON_CARD_PCIE ;
 int RADEON_FAMILY_MASK ;
 int RADEON_IS_AGP ;
 int RADEON_IS_PCIE ;
 int RADEON_SCRATCH_REG_OFFSET ;
 int drm_dev_to_irq (struct drm_device*) ;
 int radeon_read_fb_location (TYPE_3__*) ;
 int radeon_vblank_crtc_get (struct drm_device*) ;

__attribute__((used)) static int radeon_cp_getparam(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_getparam_t *param = data;
 int value;

 DRM_DEBUG("pid=%d\n", DRM_CURRENTPID);

 switch (param->param) {
 case 140:
  value = dev_priv->gart_buffers_offset;
  break;
 case 135:
  dev_priv->stats.last_frame_reads++;
  value = GET_SCRATCH(dev_priv, 0);
  break;
 case 136:
  value = GET_SCRATCH(dev_priv, 1);
  break;
 case 137:
  dev_priv->stats.last_clear_reads++;
  value = GET_SCRATCH(dev_priv, 2);
  break;
 case 138:
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
   value = 0;
  else
   value = drm_dev_to_irq(dev);
  break;
 case 141:
  value = dev_priv->gart_vm_start;
  break;
 case 132:
  value = dev_priv->mmio->offset;
  break;
 case 129:
  value = dev_priv->ring_rptr_offset;
  break;
 case 139:
  value = dev_priv->gart_textures_offset;
  break;
 case 130:
  if (!dev_priv->writeback_works)
   return -EINVAL;
  if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
   value = R600_SCRATCH_REG_OFFSET;
  else
   value = RADEON_SCRATCH_REG_OFFSET;
  break;
 case 143:
  if (dev_priv->flags & RADEON_IS_PCIE)
   value = RADEON_CARD_PCIE;
  else if (dev_priv->flags & RADEON_IS_AGP)
   value = RADEON_CARD_AGP;
  else
   value = RADEON_CARD_PCI;
  break;
 case 128:
  value = radeon_vblank_crtc_get(dev);
  break;
 case 142:
  value = radeon_read_fb_location(dev_priv);
  break;
 case 134:
  value = dev_priv->num_gb_pipes;
  break;
 case 133:
  value = dev_priv->num_z_pipes;
  break;
 default:
  DRM_DEBUG("Invalid parameter %d\n", param->param);
  return -EINVAL;
 }

 if (DRM_COPY_TO_USER(param->value, &value, sizeof(int))) {
  DRM_ERROR("copy_to_user\n");
  return -EFAULT;
 }

 return 0;
}
