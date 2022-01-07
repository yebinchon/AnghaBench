
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ saveBLC_PWM_CTL2; scalar_t__ saveBLC_PWM_CTL; } ;
struct drm_i915_private {TYPE_1__ regfile; int dev; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;


 int BLC_PWM_CTL ;
 int BLC_PWM_CTL2 ;
 int BLC_PWM_PCH_CTL2 ;
 scalar_t__ HAS_PCH_SPLIT (int ) ;
 scalar_t__ I915_READ (int ) ;
 int I915_WRITE (int ,scalar_t__) ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;

__attribute__((used)) static u32 i915_read_blc_pwm_ctl(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 val;



 if (HAS_PCH_SPLIT(dev_priv->dev)) {
  val = I915_READ(BLC_PWM_PCH_CTL2);
  if (dev_priv->regfile.saveBLC_PWM_CTL2 == 0) {
   dev_priv->regfile.saveBLC_PWM_CTL2 = val;
  } else if (val == 0) {
   val = dev_priv->regfile.saveBLC_PWM_CTL2;
   I915_WRITE(BLC_PWM_PCH_CTL2, val);
  }
 } else {
  val = I915_READ(BLC_PWM_CTL);
  if (dev_priv->regfile.saveBLC_PWM_CTL == 0) {
   dev_priv->regfile.saveBLC_PWM_CTL = val;
   if (INTEL_INFO(dev)->gen >= 4)
    dev_priv->regfile.saveBLC_PWM_CTL2 =
     I915_READ(BLC_PWM_CTL2);
  } else if (val == 0) {
   val = dev_priv->regfile.saveBLC_PWM_CTL;
   I915_WRITE(BLC_PWM_CTL, val);
   if (INTEL_INFO(dev)->gen >= 4)
    I915_WRITE(BLC_PWM_CTL2,
        dev_priv->regfile.saveBLC_PWM_CTL2);
  }
 }

 return val;
}
