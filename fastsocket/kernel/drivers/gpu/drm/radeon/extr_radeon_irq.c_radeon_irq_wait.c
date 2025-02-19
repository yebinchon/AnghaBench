
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_file {int dummy; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ drm_radeon_private_t ;
struct TYPE_4__ {int irq_seq; } ;
typedef TYPE_2__ drm_radeon_irq_wait_t ;


 int CHIP_R600 ;
 int DRM_ERROR (char*) ;
 int EINVAL ;
 int RADEON_FAMILY_MASK ;
 int radeon_wait_irq (struct drm_device*,int ) ;

int radeon_irq_wait(struct drm_device *dev, void *data, struct drm_file *file_priv)
{
 drm_radeon_private_t *dev_priv = dev->dev_private;
 drm_radeon_irq_wait_t *irqwait = data;

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 if ((dev_priv->flags & RADEON_FAMILY_MASK) >= CHIP_R600)
  return -EINVAL;

 return radeon_wait_irq(dev, irqwait->irq_seq);
}
