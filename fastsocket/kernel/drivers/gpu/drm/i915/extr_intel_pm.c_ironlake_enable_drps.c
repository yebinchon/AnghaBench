
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct TYPE_2__ {int fmax; int fstart; int max_delay; int min_delay; int cur_delay; int last_count1; int last_count2; int last_time2; int last_time1; } ;
struct drm_i915_private {TYPE_1__ ips; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_DRIVER (char*,int,int,int) ;
 int DRM_ERROR (char*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int I915_WRITE16 (int,int) ;
 int MCPPCE_EN ;
 int MEMCTL_CMD_STS ;
 int MEMIHYST ;
 int MEMINTREN ;
 int MEMINT_CX_SUPR_EN ;
 int MEMINT_EVAL_CHG_EN ;
 int MEMMODECTL ;
 int MEMMODE_FMAX_MASK ;
 int MEMMODE_FMAX_SHIFT ;
 int MEMMODE_FMIN_MASK ;
 int MEMMODE_FSTART_MASK ;
 int MEMMODE_FSTART_SHIFT ;
 int MEMMODE_SWMODE_EN ;
 int MEMSWCTL ;
 int PMMISC ;
 int POSTING_READ (int) ;
 int PXVFREQ_BASE ;
 int PXVFREQ_PX_MASK ;
 int PXVFREQ_PX_SHIFT ;
 int RCBMAXAVG ;
 int RCBMINAVG ;
 int RCDNEI ;
 int RCUPEI ;
 int TSC1 ;
 int TSE ;
 int VIDSTART ;
 int getrawmonotonic (int *) ;
 int ironlake_set_drps (struct drm_device*,int) ;
 int jiffies ;
 int jiffies_to_msecs (int ) ;
 int mchdev_lock ;
 int mdelay (int) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ wait_for_atomic (int,int) ;

__attribute__((used)) static void ironlake_enable_drps(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 rgvmodectl = I915_READ(MEMMODECTL);
 u8 fmax, fmin, fstart, vstart;

 spin_lock_irq(&mchdev_lock);


 I915_WRITE16(PMMISC, I915_READ(PMMISC) | MCPPCE_EN);
 I915_WRITE16(TSC1, I915_READ(TSC1) | TSE);


 I915_WRITE(RCUPEI, 100000);
 I915_WRITE(RCDNEI, 100000);


 I915_WRITE(RCBMAXAVG, 90000);
 I915_WRITE(RCBMINAVG, 80000);

 I915_WRITE(MEMIHYST, 1);


 fmax = (rgvmodectl & MEMMODE_FMAX_MASK) >> MEMMODE_FMAX_SHIFT;
 fmin = (rgvmodectl & MEMMODE_FMIN_MASK);
 fstart = (rgvmodectl & MEMMODE_FSTART_MASK) >>
  MEMMODE_FSTART_SHIFT;

 vstart = (I915_READ(PXVFREQ_BASE + (fstart * 4)) & PXVFREQ_PX_MASK) >>
  PXVFREQ_PX_SHIFT;

 dev_priv->ips.fmax = fmax;
 dev_priv->ips.fstart = fstart;

 dev_priv->ips.max_delay = fstart;
 dev_priv->ips.min_delay = fmin;
 dev_priv->ips.cur_delay = fstart;

 DRM_DEBUG_DRIVER("fmax: %d, fmin: %d, fstart: %d\n",
    fmax, fmin, fstart);

 I915_WRITE(MEMINTREN, MEMINT_CX_SUPR_EN | MEMINT_EVAL_CHG_EN);





 I915_WRITE(VIDSTART, vstart);
 POSTING_READ(VIDSTART);

 rgvmodectl |= MEMMODE_SWMODE_EN;
 I915_WRITE(MEMMODECTL, rgvmodectl);

 if (wait_for_atomic((I915_READ(MEMSWCTL) & MEMCTL_CMD_STS) == 0, 10))
  DRM_ERROR("stuck trying to change perf mode\n");
 mdelay(1);

 ironlake_set_drps(dev, fstart);

 dev_priv->ips.last_count1 = I915_READ(0x112e4) + I915_READ(0x112e8) +
  I915_READ(0x112e0);
 dev_priv->ips.last_time1 = jiffies_to_msecs(jiffies);
 dev_priv->ips.last_count2 = I915_READ(0x112f4);
 getrawmonotonic(&dev_priv->ips.last_time2);

 spin_unlock_irq(&mchdev_lock);
}
