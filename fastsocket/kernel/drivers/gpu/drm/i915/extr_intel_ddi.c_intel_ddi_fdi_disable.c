
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct intel_encoder {int dummy; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int FDI_PCDCLK ;
 int FDI_RX_ENABLE ;
 int FDI_RX_PLL_ENABLE ;
 int FDI_RX_PWRDN_LANE0_MASK ;
 int FDI_RX_PWRDN_LANE0_VAL (int) ;
 int FDI_RX_PWRDN_LANE1_MASK ;
 int FDI_RX_PWRDN_LANE1_VAL (int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int _FDI_RXA_CTL ;
 int _FDI_RXA_MISC ;
 struct intel_encoder* intel_ddi_get_crtc_encoder (struct drm_crtc*) ;
 int intel_ddi_post_disable (struct intel_encoder*) ;

void intel_ddi_fdi_disable(struct drm_crtc *crtc)
{
 struct drm_i915_private *dev_priv = crtc->dev->dev_private;
 struct intel_encoder *intel_encoder = intel_ddi_get_crtc_encoder(crtc);
 uint32_t val;

 intel_ddi_post_disable(intel_encoder);

 val = I915_READ(_FDI_RXA_CTL);
 val &= ~FDI_RX_ENABLE;
 I915_WRITE(_FDI_RXA_CTL, val);

 val = I915_READ(_FDI_RXA_MISC);
 val &= ~(FDI_RX_PWRDN_LANE1_MASK | FDI_RX_PWRDN_LANE0_MASK);
 val |= FDI_RX_PWRDN_LANE1_VAL(2) | FDI_RX_PWRDN_LANE0_VAL(2);
 I915_WRITE(_FDI_RXA_MISC, val);

 val = I915_READ(_FDI_RXA_CTL);
 val &= ~FDI_PCDCLK;
 I915_WRITE(_FDI_RXA_CTL, val);

 val = I915_READ(_FDI_RXA_CTL);
 val &= ~FDI_RX_PLL_ENABLE;
 I915_WRITE(_FDI_RXA_CTL, val);
}
