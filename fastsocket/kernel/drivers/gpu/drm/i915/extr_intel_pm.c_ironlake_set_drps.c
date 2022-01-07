
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG (char*) ;
 int I915_READ16 (int ) ;
 int I915_WRITE16 (int ,int) ;
 int MEMCTL_CMD_CHFREQ ;
 int MEMCTL_CMD_SHIFT ;
 int MEMCTL_CMD_STS ;
 int MEMCTL_FREQ_SHIFT ;
 int MEMCTL_SFCAVM ;
 int MEMSWCTL ;
 int POSTING_READ16 (int ) ;
 int assert_spin_locked (int *) ;
 int mchdev_lock ;

bool ironlake_set_drps(struct drm_device *dev, u8 val)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u16 rgvswctl;

 assert_spin_locked(&mchdev_lock);

 rgvswctl = I915_READ16(MEMSWCTL);
 if (rgvswctl & MEMCTL_CMD_STS) {
  DRM_DEBUG("gpu busy, RCS change rejected\n");
  return 0;
 }

 rgvswctl = (MEMCTL_CMD_CHFREQ << MEMCTL_CMD_SHIFT) |
  (val << MEMCTL_FREQ_SHIFT) | MEMCTL_SFCAVM;
 I915_WRITE16(MEMSWCTL, rgvswctl);
 POSTING_READ16(MEMSWCTL);

 rgvswctl |= MEMCTL_CMD_STS;
 I915_WRITE16(MEMSWCTL, rgvswctl);

 return 1;
}
