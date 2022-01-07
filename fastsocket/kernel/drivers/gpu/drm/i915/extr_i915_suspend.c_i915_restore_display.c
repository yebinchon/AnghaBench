
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int saveFBC_CONTROL; int saveFBC_CONTROL2; int saveFBC_LL_BASE; int saveFBC_CFB_BASE; int saveDPFC_CB_BASE; int savePP_CONTROL; int savePP_DIVISOR; int savePP_OFF_DELAYS; int savePP_ON_DELAYS; int saveBLC_HIST_CTL; int saveBLC_PWM_CTL; int savePFIT_PGM_RATIOS; int saveMCHBAR_RENDER_STANDBY; int saveBLC_CPU_PWM_CTL; int saveBLC_CPU_PWM_CTL2; int saveBLC_PWM_CTL2; int savePFIT_CONTROL; int saveLVDS; int saveDSPARB; } ;
struct drm_i915_private {TYPE_1__ regfile; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_4__ {int gen; } ;


 int BLC_HIST_CTL ;
 int BLC_PWM_CPU_CTL ;
 int BLC_PWM_CPU_CTL2 ;
 int BLC_PWM_CTL ;
 int BLC_PWM_CTL2 ;
 int BLC_PWM_PCH_CTL1 ;
 int BLC_PWM_PCH_CTL2 ;
 int DPFC_CB_BASE ;
 int DRIVER_MODESET ;
 int DSPARB ;
 int FBC_CFB_BASE ;
 int FBC_CONTROL ;
 int FBC_CONTROL2 ;
 int FBC_LL_BASE ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 scalar_t__ I915_HAS_FBC (struct drm_device*) ;
 int I915_WRITE (int ,int ) ;
 int ILK_DPFC_CB_BASE ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 int IS_845G (struct drm_device*) ;
 scalar_t__ IS_GM45 (struct drm_device*) ;
 int IS_I830 (struct drm_device*) ;
 scalar_t__ IS_MOBILE (struct drm_device*) ;
 int LVDS ;
 int PCH_LVDS ;
 int PCH_PP_CONTROL ;
 int PCH_PP_DIVISOR ;
 int PCH_PP_OFF_DELAYS ;
 int PCH_PP_ON_DELAYS ;
 int PFIT_CONTROL ;
 int PFIT_PGM_RATIOS ;
 int PP_CONTROL ;
 int PP_DIVISOR ;
 int PP_OFF_DELAYS ;
 int PP_ON_DELAYS ;
 int RSTDBYCTL ;
 int drm_core_check_feature (struct drm_device*,int ) ;
 int i915_redisable_vga (struct drm_device*) ;
 int i915_restore_display_reg (struct drm_device*) ;
 int i915_restore_vga (struct drm_device*) ;
 int intel_disable_fbc (struct drm_device*) ;

__attribute__((used)) static void i915_restore_display(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 if (INTEL_INFO(dev)->gen <= 4)
  I915_WRITE(DSPARB, dev_priv->regfile.saveDSPARB);

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  i915_restore_display_reg(dev);


 if (INTEL_INFO(dev)->gen >= 4 && !HAS_PCH_SPLIT(dev))
  I915_WRITE(BLC_PWM_CTL2, dev_priv->regfile.saveBLC_PWM_CTL2);

 if (HAS_PCH_SPLIT(dev)) {
  I915_WRITE(PCH_LVDS, dev_priv->regfile.saveLVDS);
 } else if (IS_MOBILE(dev) && !IS_I830(dev))
  I915_WRITE(LVDS, dev_priv->regfile.saveLVDS);

 if (!IS_I830(dev) && !IS_845G(dev) && !HAS_PCH_SPLIT(dev))
  I915_WRITE(PFIT_CONTROL, dev_priv->regfile.savePFIT_CONTROL);

 if (HAS_PCH_SPLIT(dev)) {
  I915_WRITE(BLC_PWM_PCH_CTL1, dev_priv->regfile.saveBLC_PWM_CTL);
  I915_WRITE(BLC_PWM_PCH_CTL2, dev_priv->regfile.saveBLC_PWM_CTL2);



  I915_WRITE(BLC_PWM_CPU_CTL2, dev_priv->regfile.saveBLC_CPU_PWM_CTL2);
  I915_WRITE(BLC_PWM_CPU_CTL, dev_priv->regfile.saveBLC_CPU_PWM_CTL);
  I915_WRITE(PCH_PP_ON_DELAYS, dev_priv->regfile.savePP_ON_DELAYS);
  I915_WRITE(PCH_PP_OFF_DELAYS, dev_priv->regfile.savePP_OFF_DELAYS);
  I915_WRITE(PCH_PP_DIVISOR, dev_priv->regfile.savePP_DIVISOR);
  I915_WRITE(PCH_PP_CONTROL, dev_priv->regfile.savePP_CONTROL);
  I915_WRITE(RSTDBYCTL,
      dev_priv->regfile.saveMCHBAR_RENDER_STANDBY);
 } else {
  I915_WRITE(PFIT_PGM_RATIOS, dev_priv->regfile.savePFIT_PGM_RATIOS);
  I915_WRITE(BLC_PWM_CTL, dev_priv->regfile.saveBLC_PWM_CTL);
  I915_WRITE(BLC_HIST_CTL, dev_priv->regfile.saveBLC_HIST_CTL);
  I915_WRITE(PP_ON_DELAYS, dev_priv->regfile.savePP_ON_DELAYS);
  I915_WRITE(PP_OFF_DELAYS, dev_priv->regfile.savePP_OFF_DELAYS);
  I915_WRITE(PP_DIVISOR, dev_priv->regfile.savePP_DIVISOR);
  I915_WRITE(PP_CONTROL, dev_priv->regfile.savePP_CONTROL);
 }


 intel_disable_fbc(dev);
 if (I915_HAS_FBC(dev)) {
  if (HAS_PCH_SPLIT(dev)) {
   I915_WRITE(ILK_DPFC_CB_BASE, dev_priv->regfile.saveDPFC_CB_BASE);
  } else if (IS_GM45(dev)) {
   I915_WRITE(DPFC_CB_BASE, dev_priv->regfile.saveDPFC_CB_BASE);
  } else {
   I915_WRITE(FBC_CFB_BASE, dev_priv->regfile.saveFBC_CFB_BASE);
   I915_WRITE(FBC_LL_BASE, dev_priv->regfile.saveFBC_LL_BASE);
   I915_WRITE(FBC_CONTROL2, dev_priv->regfile.saveFBC_CONTROL2);
   I915_WRITE(FBC_CONTROL, dev_priv->regfile.saveFBC_CONTROL);
  }
 }

 if (!drm_core_check_feature(dev, DRIVER_MODESET))
  i915_restore_vga(dev);
 else
  i915_redisable_vga(dev);
}
