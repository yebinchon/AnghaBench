
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int gpio_mmio_base; int gmbus_wait_queue; int dev; } ;


 int DEFINE_WAIT (int ) ;
 int ENXIO ;
 int ETIMEDOUT ;
 scalar_t__ GMBUS2 ;
 scalar_t__ GMBUS4 ;
 int GMBUS_SATOER ;
 int HAS_GMBUS_IRQ (int ) ;
 int I915_READ_NOTRACE (scalar_t__) ;
 int I915_WRITE (scalar_t__,int) ;
 int TASK_UNINTERRUPTIBLE ;
 int finish_wait (int *,int *) ;
 int msecs_to_jiffies (int) ;
 int prepare_to_wait (int *,int *,int ) ;
 int schedule_timeout (int) ;
 int wait ;

__attribute__((used)) static int
gmbus_wait_hw_status(struct drm_i915_private *dev_priv,
       u32 gmbus2_status,
       u32 gmbus4_irq_en)
{
 int i;
 int reg_offset = dev_priv->gpio_mmio_base;
 u32 gmbus2 = 0;
 DEFINE_WAIT(wait);

 if (!HAS_GMBUS_IRQ(dev_priv->dev))
  gmbus4_irq_en = 0;




 I915_WRITE(GMBUS4 + reg_offset, gmbus4_irq_en);

 for (i = 0; i < msecs_to_jiffies(50) + 1; i++) {
  prepare_to_wait(&dev_priv->gmbus_wait_queue, &wait,
    TASK_UNINTERRUPTIBLE);

  gmbus2 = I915_READ_NOTRACE(GMBUS2 + reg_offset);
  if (gmbus2 & (GMBUS_SATOER | gmbus2_status))
   break;

  schedule_timeout(1);
 }
 finish_wait(&dev_priv->gmbus_wait_queue, &wait);

 I915_WRITE(GMBUS4 + reg_offset, 0);

 if (gmbus2 & GMBUS_SATOER)
  return -ENXIO;
 if (gmbus2 & gmbus2_status)
  return 0;
 return -ETIMEDOUT;
}
