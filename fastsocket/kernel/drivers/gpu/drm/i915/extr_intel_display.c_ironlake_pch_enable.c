
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc {int pipe; TYPE_2__* pch_pll; } ;
struct TYPE_4__ {int (* fdi_link_train ) (struct drm_crtc*) ;} ;
struct drm_i915_private {TYPE_1__ display; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int flags; } ;
struct drm_crtc {TYPE_3__ mode; struct drm_device* dev; } ;
struct TYPE_5__ {scalar_t__ pll_reg; } ;


 int BUG () ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 int FDI_RX_TUSIZE1 (int) ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 int HBLANK (int) ;
 int HSYNC (int) ;
 int HTOTAL (int) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int PCH_DPLL_SEL ;



 int PIPECONF (int) ;
 int PIPECONF_BPC_MASK ;
 int PIPE_DATA_M1 (int) ;
 int TRANSA_DPLLB_SEL ;
 int TRANSA_DPLL_ENABLE ;
 int TRANSB_DPLLB_SEL ;
 int TRANSB_DPLL_ENABLE ;
 int TRANSC_DPLLB_SEL ;
 int TRANSC_DPLL_ENABLE ;
 int TRANS_DP_BPC_MASK ;
 int TRANS_DP_CTL (int) ;
 int TRANS_DP_ENH_FRAMING ;
 int TRANS_DP_HSYNC_ACTIVE_HIGH ;
 int TRANS_DP_OUTPUT_ENABLE ;
 int TRANS_DP_PORT_SEL_B ;
 int TRANS_DP_PORT_SEL_C ;
 int TRANS_DP_PORT_SEL_D ;
 int TRANS_DP_PORT_SEL_MASK ;
 int TRANS_DP_SYNC_MASK ;
 int TRANS_DP_VSYNC_ACTIVE_HIGH ;
 int TRANS_HBLANK (int) ;
 int TRANS_HSYNC (int) ;
 int TRANS_HTOTAL (int) ;
 int TRANS_VBLANK (int) ;
 int TRANS_VSYNC (int) ;
 int TRANS_VSYNCSHIFT (int) ;
 int TRANS_VTOTAL (int) ;
 int TU_SIZE_MASK ;
 int VBLANK (int) ;
 int VSYNC (int) ;
 int VSYNCSHIFT (int) ;
 int VTOTAL (int) ;
 scalar_t__ _PCH_DPLL_B ;
 int assert_panel_unlocked (struct drm_i915_private*,int) ;
 int assert_transcoder_disabled (struct drm_i915_private*,int) ;
 int intel_fdi_normal_train (struct drm_crtc*) ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;
 int intel_trans_dp_port_sel (struct drm_crtc*) ;
 int ironlake_enable_pch_pll (struct intel_crtc*) ;
 int ironlake_enable_pch_transcoder (struct drm_i915_private*,int) ;
 int stub1 (struct drm_crtc*) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void ironlake_pch_enable(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 u32 reg, temp;

 assert_transcoder_disabled(dev_priv, pipe);



 I915_WRITE(FDI_RX_TUSIZE1(pipe),
     I915_READ(PIPE_DATA_M1(pipe)) & TU_SIZE_MASK);


 dev_priv->display.fdi_link_train(crtc);
 ironlake_enable_pch_pll(intel_crtc);

 if (HAS_PCH_CPT(dev)) {
  u32 sel;

  temp = I915_READ(PCH_DPLL_SEL);
  switch (pipe) {
  default:
  case 0:
   temp |= TRANSA_DPLL_ENABLE;
   sel = TRANSA_DPLLB_SEL;
   break;
  case 1:
   temp |= TRANSB_DPLL_ENABLE;
   sel = TRANSB_DPLLB_SEL;
   break;
  case 2:
   temp |= TRANSC_DPLL_ENABLE;
   sel = TRANSC_DPLLB_SEL;
   break;
  }
  if (intel_crtc->pch_pll->pll_reg == _PCH_DPLL_B)
   temp |= sel;
  else
   temp &= ~sel;
  I915_WRITE(PCH_DPLL_SEL, temp);
 }


 assert_panel_unlocked(dev_priv, pipe);
 I915_WRITE(TRANS_HTOTAL(pipe), I915_READ(HTOTAL(pipe)));
 I915_WRITE(TRANS_HBLANK(pipe), I915_READ(HBLANK(pipe)));
 I915_WRITE(TRANS_HSYNC(pipe), I915_READ(HSYNC(pipe)));

 I915_WRITE(TRANS_VTOTAL(pipe), I915_READ(VTOTAL(pipe)));
 I915_WRITE(TRANS_VBLANK(pipe), I915_READ(VBLANK(pipe)));
 I915_WRITE(TRANS_VSYNC(pipe), I915_READ(VSYNC(pipe)));
 I915_WRITE(TRANS_VSYNCSHIFT(pipe), I915_READ(VSYNCSHIFT(pipe)));

 intel_fdi_normal_train(crtc);


 if (HAS_PCH_CPT(dev) &&
     (intel_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT) ||
      intel_pipe_has_type(crtc, INTEL_OUTPUT_EDP))) {
  u32 bpc = (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) >> 5;
  reg = TRANS_DP_CTL(pipe);
  temp = I915_READ(reg);
  temp &= ~(TRANS_DP_PORT_SEL_MASK |
     TRANS_DP_SYNC_MASK |
     TRANS_DP_BPC_MASK);
  temp |= (TRANS_DP_OUTPUT_ENABLE |
    TRANS_DP_ENH_FRAMING);
  temp |= bpc << 9;

  if (crtc->mode.flags & DRM_MODE_FLAG_PHSYNC)
   temp |= TRANS_DP_HSYNC_ACTIVE_HIGH;
  if (crtc->mode.flags & DRM_MODE_FLAG_PVSYNC)
   temp |= TRANS_DP_VSYNC_ACTIVE_HIGH;

  switch (intel_trans_dp_port_sel(crtc)) {
  case 130:
   temp |= TRANS_DP_PORT_SEL_B;
   break;
  case 129:
   temp |= TRANS_DP_PORT_SEL_C;
   break;
  case 128:
   temp |= TRANS_DP_PORT_SEL_D;
   break;
  default:
   BUG();
  }

  I915_WRITE(reg, temp);
 }

 ironlake_enable_pch_transcoder(dev_priv, pipe);
}
