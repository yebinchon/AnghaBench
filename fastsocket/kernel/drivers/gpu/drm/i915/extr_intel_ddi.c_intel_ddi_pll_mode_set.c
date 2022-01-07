
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct drm_encoder {int dummy; } ;
struct intel_encoder {int type; struct drm_encoder base; } ;
struct intel_dp {int link_bw; } ;
struct intel_ddi_plls {scalar_t__ wrpll1_refcount; scalar_t__ wrpll2_refcount; scalar_t__ spll_refcount; } ;
struct intel_crtc {int pipe; int ddi_pll_sel; } ;
struct drm_i915_private {struct intel_ddi_plls ddi_plls; } ;
struct drm_crtc {TYPE_1__* dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;





 int DRM_DEBUG_KMS (char*,int ) ;
 int DRM_ERROR (char*,...) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int INTEL_OUTPUT_ANALOG ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 int PORT_CLK_SEL_LCPLL_1350 ;
 int PORT_CLK_SEL_LCPLL_2700 ;
 int PORT_CLK_SEL_LCPLL_810 ;
 int PORT_CLK_SEL_SPLL ;
 int PORT_CLK_SEL_WRPLL1 ;
 int PORT_CLK_SEL_WRPLL2 ;
 int SPLL_CTL ;
 int SPLL_PLL_ENABLE ;
 int SPLL_PLL_FREQ_1350MHz ;
 int SPLL_PLL_SSC ;
 int WARN (int,char*,...) ;
 int WRPLL_CTL1 ;
 int WRPLL_CTL2 ;
 int WRPLL_DIVIDER_FEEDBACK (int) ;
 int WRPLL_DIVIDER_POST (int) ;
 int WRPLL_DIVIDER_REFERENCE (int) ;
 int WRPLL_PLL_ENABLE ;
 int WRPLL_PLL_SELECT_LCPLL_2700 ;
 struct intel_dp* enc_to_intel_dp (struct drm_encoder*) ;
 int intel_ddi_calculate_wrpll (int,int*,int*,int*) ;
 struct intel_encoder* intel_ddi_get_crtc_encoder (struct drm_crtc*) ;
 int intel_ddi_put_crtc_pll (struct drm_crtc*) ;
 int pipe_name (int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int udelay (int) ;

bool intel_ddi_pll_mode_set(struct drm_crtc *crtc, int clock)
{
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct intel_encoder *intel_encoder = intel_ddi_get_crtc_encoder(crtc);
 struct drm_encoder *encoder = &intel_encoder->base;
 struct drm_i915_private *dev_priv = crtc->dev->dev_private;
 struct intel_ddi_plls *plls = &dev_priv->ddi_plls;
 int type = intel_encoder->type;
 enum pipe pipe = intel_crtc->pipe;
 uint32_t reg, val;



 intel_ddi_put_crtc_pll(crtc);

 if (type == INTEL_OUTPUT_DISPLAYPORT || type == INTEL_OUTPUT_EDP) {
  struct intel_dp *intel_dp = enc_to_intel_dp(encoder);

  switch (intel_dp->link_bw) {
  case 130:
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_810;
   break;
  case 129:
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_1350;
   break;
  case 128:
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_LCPLL_2700;
   break;
  default:
   DRM_ERROR("Link bandwidth %d unsupported\n",
      intel_dp->link_bw);
   return 0;
  }


  return 1;

 } else if (type == INTEL_OUTPUT_HDMI) {
  int p, n2, r2;

  if (plls->wrpll1_refcount == 0) {
   DRM_DEBUG_KMS("Using WRPLL 1 on pipe %c\n",
          pipe_name(pipe));
   plls->wrpll1_refcount++;
   reg = WRPLL_CTL1;
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_WRPLL1;
  } else if (plls->wrpll2_refcount == 0) {
   DRM_DEBUG_KMS("Using WRPLL 2 on pipe %c\n",
          pipe_name(pipe));
   plls->wrpll2_refcount++;
   reg = WRPLL_CTL2;
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_WRPLL2;
  } else {
   DRM_ERROR("No WRPLLs available!\n");
   return 0;
  }

  WARN(I915_READ(reg) & WRPLL_PLL_ENABLE,
       "WRPLL already enabled\n");

  intel_ddi_calculate_wrpll(clock, &p, &n2, &r2);

  val = WRPLL_PLL_ENABLE | WRPLL_PLL_SELECT_LCPLL_2700 |
        WRPLL_DIVIDER_REFERENCE(r2) | WRPLL_DIVIDER_FEEDBACK(n2) |
        WRPLL_DIVIDER_POST(p);

 } else if (type == INTEL_OUTPUT_ANALOG) {
  if (plls->spll_refcount == 0) {
   DRM_DEBUG_KMS("Using SPLL on pipe %c\n",
          pipe_name(pipe));
   plls->spll_refcount++;
   reg = SPLL_CTL;
   intel_crtc->ddi_pll_sel = PORT_CLK_SEL_SPLL;
  }

  WARN(I915_READ(reg) & SPLL_PLL_ENABLE,
       "SPLL already enabled\n");

  val = SPLL_PLL_ENABLE | SPLL_PLL_FREQ_1350MHz | SPLL_PLL_SSC;

 } else {
  WARN(1, "Invalid DDI encoder type %d\n", type);
  return 0;
 }

 I915_WRITE(reg, val);
 udelay(20);

 return 1;
}
