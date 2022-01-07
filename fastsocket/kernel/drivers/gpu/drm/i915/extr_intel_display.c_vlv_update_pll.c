
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dpio_lock; } ;
struct drm_display_mode {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;
struct TYPE_4__ {int n; int m1; int m2; int p1; int p2; } ;
typedef TYPE_1__ intel_clock_t ;


 int DPIO_BIAS_CURRENT_CTL_SHIFT ;
 int DPIO_CLK_BIAS_CTL_SHIFT ;
 int DPIO_CORE_CLK (int) ;
 int DPIO_DATA_CHANNEL1 ;
 int DPIO_DATA_CHANNEL2 ;
 int DPIO_DIV (int) ;
 int DPIO_DRIVER_CTL_SHIFT ;
 int DPIO_ENABLE_CALIBRATION ;
 int DPIO_FASTCLK_DISABLE ;
 int DPIO_K_SHIFT ;
 int DPIO_LFP_COEFF (int) ;
 int DPIO_M1DIV_SHIFT ;
 int DPIO_M2DIV_MASK ;
 int DPIO_N_SHIFT ;
 int DPIO_P1_SHIFT ;
 int DPIO_P2_SHIFT ;
 int DPIO_PLL_MODESEL_SHIFT ;
 int DPIO_PLL_REFCLK_SEL_SHIFT ;
 int DPIO_POST_DIV_SHIFT ;
 int DPIO_REFSEL_OVERRIDE ;
 int DPIO_REFSFR (int) ;
 int DPLL (int) ;
 int DPLL_EXT_BUFFER_ENABLE_VLV ;
 int DPLL_INTEGRATED_CLOCK_VLV ;
 int DPLL_LOCK_VLV ;
 int DPLL_MD (int) ;
 int DPLL_MD_UDI_MULTIPLIER_SHIFT ;
 int DPLL_REFA_CLK_ENABLE_VLV ;
 int DPLL_VCO_ENABLE ;
 int DPLL_VGA_MODE_DIS ;
 int DRM_ERROR (char*,int) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int INTEL_OUTPUT_DISPLAYPORT ;
 int INTEL_OUTPUT_EDP ;
 int INTEL_OUTPUT_HDMI ;
 int INTEL_OUTPUT_SDVO ;
 int POSTING_READ (int ) ;
 int intel_dp_set_m_n (struct drm_crtc*,struct drm_display_mode*,struct drm_display_mode*) ;
 int intel_dpio_write (struct drm_i915_private*,int ,int) ;
 int intel_mode_get_pixel_multiplier (struct drm_display_mode*) ;
 scalar_t__ intel_pipe_has_type (struct drm_crtc*,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int udelay (int) ;
 scalar_t__ wait_for (int,int) ;

__attribute__((used)) static void vlv_update_pll(struct drm_crtc *crtc,
      struct drm_display_mode *mode,
      struct drm_display_mode *adjusted_mode,
      intel_clock_t *clock, intel_clock_t *reduced_clock,
      int num_connectors)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 u32 dpll, mdiv, pdiv;
 u32 bestn, bestm1, bestm2, bestp1, bestp2;
 bool is_sdvo;
 u32 temp;

 mutex_lock(&dev_priv->dpio_lock);

 is_sdvo = intel_pipe_has_type(crtc, INTEL_OUTPUT_SDVO) ||
  intel_pipe_has_type(crtc, INTEL_OUTPUT_HDMI);

 dpll = DPLL_VGA_MODE_DIS;
 dpll |= DPLL_EXT_BUFFER_ENABLE_VLV;
 dpll |= DPLL_REFA_CLK_ENABLE_VLV;
 dpll |= DPLL_INTEGRATED_CLOCK_VLV;

 I915_WRITE(DPLL(pipe), dpll);
 POSTING_READ(DPLL(pipe));

 bestn = clock->n;
 bestm1 = clock->m1;
 bestm2 = clock->m2;
 bestp1 = clock->p1;
 bestp2 = clock->p2;





 mdiv = ((bestm1 << DPIO_M1DIV_SHIFT) | (bestm2 & DPIO_M2DIV_MASK));
 mdiv |= ((bestp1 << DPIO_P1_SHIFT) | (bestp2 << DPIO_P2_SHIFT));
 mdiv |= ((bestn << DPIO_N_SHIFT));
 mdiv |= (1 << DPIO_POST_DIV_SHIFT);
 mdiv |= (1 << DPIO_K_SHIFT);
 mdiv |= DPIO_ENABLE_CALIBRATION;
 intel_dpio_write(dev_priv, DPIO_DIV(pipe), mdiv);

 intel_dpio_write(dev_priv, DPIO_CORE_CLK(pipe), 0x01000000);

 pdiv = (1 << DPIO_REFSEL_OVERRIDE) | (5 << DPIO_PLL_MODESEL_SHIFT) |
  (3 << DPIO_BIAS_CURRENT_CTL_SHIFT) | (1<<20) |
  (7 << DPIO_PLL_REFCLK_SEL_SHIFT) | (8 << DPIO_DRIVER_CTL_SHIFT) |
  (5 << DPIO_CLK_BIAS_CTL_SHIFT);
 intel_dpio_write(dev_priv, DPIO_REFSFR(pipe), pdiv);

 intel_dpio_write(dev_priv, DPIO_LFP_COEFF(pipe), 0x005f003b);

 dpll |= DPLL_VCO_ENABLE;
 I915_WRITE(DPLL(pipe), dpll);
 POSTING_READ(DPLL(pipe));
 if (wait_for(((I915_READ(DPLL(pipe)) & DPLL_LOCK_VLV) == DPLL_LOCK_VLV), 1))
  DRM_ERROR("DPLL %d failed to lock\n", pipe);

 intel_dpio_write(dev_priv, DPIO_FASTCLK_DISABLE, 0x620);

 if (intel_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT))
  intel_dp_set_m_n(crtc, mode, adjusted_mode);

 I915_WRITE(DPLL(pipe), dpll);


 POSTING_READ(DPLL(pipe));
 udelay(150);

 temp = 0;
 if (is_sdvo) {
  temp = intel_mode_get_pixel_multiplier(adjusted_mode);
  if (temp > 1)
   temp = (temp - 1) << DPLL_MD_UDI_MULTIPLIER_SHIFT;
  else
   temp = 0;
 }
 I915_WRITE(DPLL_MD(pipe), temp);
 POSTING_READ(DPLL_MD(pipe));


 if(intel_pipe_has_type(crtc, INTEL_OUTPUT_DISPLAYPORT)
   || intel_pipe_has_type(crtc, INTEL_OUTPUT_HDMI))
 {
  temp = 0x1000C4;
  if(pipe == 1)
   temp |= (1 << 21);
  intel_dpio_write(dev_priv, DPIO_DATA_CHANNEL1, temp);
 }
 if(intel_pipe_has_type(crtc,INTEL_OUTPUT_EDP))
 {
  temp = 0x1000C4;
  if(pipe == 1)
   temp |= (1 << 21);
  intel_dpio_write(dev_priv, DPIO_DATA_CHANNEL2, temp);
 }

 mutex_unlock(&dev_priv->dpio_lock);
}
