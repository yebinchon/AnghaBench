
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {scalar_t__ dev_private; } ;
typedef int* maskarray_t ;
struct TYPE_3__ {int* irq_map; int** irq_masks; TYPE_2__* via_irqs; } ;
typedef TYPE_1__ drm_via_private_t ;
struct TYPE_4__ {int irq_received; int irq_queue; } ;
typedef TYPE_2__ drm_via_irq_t ;


 int DRM_DEBUG (char*) ;
 int DRM_ERROR (char*,...) ;
 int DRM_HZ ;
 int DRM_WAIT_ON (int,int ,int,int) ;
 int EINVAL ;
 int VIA_READ (int) ;
 unsigned int atomic_read (int *) ;
 unsigned int drm_via_irq_num ;

__attribute__((used)) static int
via_driver_irq_wait(struct drm_device *dev, unsigned int irq, int force_sequence,
      unsigned int *sequence)
{
 drm_via_private_t *dev_priv = (drm_via_private_t *) dev->dev_private;
 unsigned int cur_irq_sequence;
 drm_via_irq_t *cur_irq;
 int ret = 0;
 maskarray_t *masks;
 int real_irq;

 DRM_DEBUG("\n");

 if (!dev_priv) {
  DRM_ERROR("called with no initialization\n");
  return -EINVAL;
 }

 if (irq >= drm_via_irq_num) {
  DRM_ERROR("Trying to wait on unknown irq %d\n", irq);
  return -EINVAL;
 }

 real_irq = dev_priv->irq_map[irq];

 if (real_irq < 0) {
  DRM_ERROR("Video IRQ %d not available on this hardware.\n",
     irq);
  return -EINVAL;
 }

 masks = dev_priv->irq_masks;
 cur_irq = dev_priv->via_irqs + real_irq;

 if (masks[real_irq][2] && !force_sequence) {
  DRM_WAIT_ON(ret, cur_irq->irq_queue, 3 * DRM_HZ,
       ((VIA_READ(masks[irq][2]) & masks[irq][3]) ==
        masks[irq][4]));
  cur_irq_sequence = atomic_read(&cur_irq->irq_received);
 } else {
  DRM_WAIT_ON(ret, cur_irq->irq_queue, 3 * DRM_HZ,
       (((cur_irq_sequence =
          atomic_read(&cur_irq->irq_received)) -
         *sequence) <= (1 << 23)));
 }
 *sequence = cur_irq_sequence;
 return ret;
}
