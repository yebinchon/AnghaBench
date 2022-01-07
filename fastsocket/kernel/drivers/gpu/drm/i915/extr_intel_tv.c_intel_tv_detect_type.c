
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct TYPE_2__ {struct drm_encoder base; } ;
struct intel_tv {TYPE_1__ base; } ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int irq_lock; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct drm_connector {int polled; } ;


 int DAC_A_0_7_V ;
 int DAC_A_MASK ;
 int DAC_B_0_7_V ;
 int DAC_B_MASK ;
 int DAC_CTL_OVERRIDE ;
 int DAC_C_0_7_V ;
 int DAC_C_MASK ;
 int DRM_CONNECTOR_POLL_HPD ;
 int DRM_DEBUG_KMS (char*,...) ;
 int DRM_MODE_CONNECTOR_Component ;
 int DRM_MODE_CONNECTOR_Composite ;
 int DRM_MODE_CONNECTOR_SVIDEO ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 scalar_t__ IS_GM45 (struct drm_device*) ;
 int PIPE_HOTPLUG_INTERRUPT_ENABLE ;
 int PIPE_HOTPLUG_TV_INTERRUPT_ENABLE ;
 int POSTING_READ (int ) ;
 int TVDAC_A_SENSE ;
 int TVDAC_A_SENSE_CTL ;
 int TVDAC_B_SENSE ;
 int TVDAC_B_SENSE_CTL ;
 int TVDAC_C_SENSE ;
 int TVDAC_C_SENSE_CTL ;
 int TVDAC_SENSE_MASK ;
 int TVDAC_STATE_CHG_EN ;
 int TV_CTL ;
 int TV_DAC ;
 int TV_ENC_ENABLE ;
 int TV_ENC_PIPEB_SELECT ;
 int TV_TEST_MODE_MASK ;
 int TV_TEST_MODE_MONITOR_DETECT ;
 int i915_disable_pipestat (struct drm_i915_private*,int ,int) ;
 int i915_enable_pipestat (struct drm_i915_private*,int ,int) ;
 int intel_wait_for_vblank (struct drm_device*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static int
intel_tv_detect_type(struct intel_tv *intel_tv,
        struct drm_connector *connector)
{
 struct drm_encoder *encoder = &intel_tv->base.base;
 struct drm_crtc *crtc = encoder->crtc;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct drm_device *dev = encoder->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 unsigned long irqflags;
 u32 tv_ctl, save_tv_ctl;
 u32 tv_dac, save_tv_dac;
 int type;


 if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
  spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
  i915_disable_pipestat(dev_priv, 0,
          PIPE_HOTPLUG_INTERRUPT_ENABLE |
          PIPE_HOTPLUG_TV_INTERRUPT_ENABLE);
  spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }

 save_tv_dac = tv_dac = I915_READ(TV_DAC);
 save_tv_ctl = tv_ctl = I915_READ(TV_CTL);


 tv_ctl &= ~(TV_ENC_ENABLE | TV_TEST_MODE_MASK);
 tv_ctl |= TV_TEST_MODE_MONITOR_DETECT;
 if (intel_crtc->pipe == 1)
  tv_ctl |= TV_ENC_PIPEB_SELECT;
 else
  tv_ctl &= ~TV_ENC_PIPEB_SELECT;

 tv_dac &= ~(TVDAC_SENSE_MASK | DAC_A_MASK | DAC_B_MASK | DAC_C_MASK);
 tv_dac |= (TVDAC_STATE_CHG_EN |
     TVDAC_A_SENSE_CTL |
     TVDAC_B_SENSE_CTL |
     TVDAC_C_SENSE_CTL |
     DAC_CTL_OVERRIDE |
     DAC_A_0_7_V |
     DAC_B_0_7_V |
     DAC_C_0_7_V);






 if (IS_GM45(dev))
  tv_dac &= ~(TVDAC_STATE_CHG_EN | TVDAC_A_SENSE_CTL |
       TVDAC_B_SENSE_CTL | TVDAC_C_SENSE_CTL);

 I915_WRITE(TV_CTL, tv_ctl);
 I915_WRITE(TV_DAC, tv_dac);
 POSTING_READ(TV_DAC);

 intel_wait_for_vblank(intel_tv->base.base.dev,
         to_intel_crtc(intel_tv->base.base.crtc)->pipe);

 type = -1;
 tv_dac = I915_READ(TV_DAC);
 DRM_DEBUG_KMS("TV detected: %x, %x\n", tv_ctl, tv_dac);






 if ((tv_dac & TVDAC_SENSE_MASK) == (TVDAC_B_SENSE | TVDAC_C_SENSE)) {
  DRM_DEBUG_KMS("Detected Composite TV connection\n");
  type = DRM_MODE_CONNECTOR_Composite;
 } else if ((tv_dac & (TVDAC_A_SENSE|TVDAC_B_SENSE)) == TVDAC_A_SENSE) {
  DRM_DEBUG_KMS("Detected S-Video TV connection\n");
  type = DRM_MODE_CONNECTOR_SVIDEO;
 } else if ((tv_dac & TVDAC_SENSE_MASK) == 0) {
  DRM_DEBUG_KMS("Detected Component TV connection\n");
  type = DRM_MODE_CONNECTOR_Component;
 } else {
  DRM_DEBUG_KMS("Unrecognised TV connection\n");
  type = -1;
 }

 I915_WRITE(TV_DAC, save_tv_dac & ~TVDAC_STATE_CHG_EN);
 I915_WRITE(TV_CTL, save_tv_ctl);
 POSTING_READ(TV_CTL);


 intel_wait_for_vblank(intel_tv->base.base.dev,
         to_intel_crtc(intel_tv->base.base.crtc)->pipe);


 if (connector->polled & DRM_CONNECTOR_POLL_HPD) {
  spin_lock_irqsave(&dev_priv->irq_lock, irqflags);
  i915_enable_pipestat(dev_priv, 0,
         PIPE_HOTPLUG_INTERRUPT_ENABLE |
         PIPE_HOTPLUG_TV_INTERRUPT_ENABLE);
  spin_unlock_irqrestore(&dev_priv->irq_lock, irqflags);
 }

 return type;
}
