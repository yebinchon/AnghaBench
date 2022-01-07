
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int fstart; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DEIER ;
 int DEIIR ;
 int DEIMR ;
 int DE_PCU_EVENT ;
 int I915_READ (int ) ;
 int I915_READ16 (int ) ;
 int I915_WRITE (int ,int) ;
 int MEMCTL_CMD_STS ;
 int MEMINTREN ;
 int MEMINTRSTS ;
 int MEMINT_EVAL_CHG ;
 int MEMINT_EVAL_CHG_EN ;
 int MEMSWCTL ;
 int ironlake_set_drps (struct drm_device*,int ) ;
 int mchdev_lock ;
 int mdelay (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void ironlake_disable_drps(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u16 rgvswctl;

 spin_lock_irq(&mchdev_lock);

 rgvswctl = I915_READ16(MEMSWCTL);


 I915_WRITE(MEMINTREN, I915_READ(MEMINTREN) & ~MEMINT_EVAL_CHG_EN);
 I915_WRITE(MEMINTRSTS, MEMINT_EVAL_CHG);
 I915_WRITE(DEIER, I915_READ(DEIER) & ~DE_PCU_EVENT);
 I915_WRITE(DEIIR, DE_PCU_EVENT);
 I915_WRITE(DEIMR, I915_READ(DEIMR) | DE_PCU_EVENT);


 ironlake_set_drps(dev, dev_priv->ips.fstart);
 mdelay(1);
 rgvswctl |= MEMCTL_CMD_STS;
 I915_WRITE(MEMSWCTL, rgvswctl);
 mdelay(1);

 spin_unlock_irq(&mchdev_lock);
}
