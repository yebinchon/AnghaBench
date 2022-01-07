
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_crtc {int pipe; int fdi_lanes; TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int FDI_PCDCLK ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_PLL_ENABLE ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_PLL_ENABLE ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int PIPECONF (int) ;
 int PIPECONF_BPC_MASK ;
 int POSTING_READ (int) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_fdi_pll_enable(struct intel_crtc *intel_crtc)
{
 struct drm_device *dev = intel_crtc->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 int pipe = intel_crtc->pipe;
 u32 reg, temp;



 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~((0x7 << 19) | (0x7 << 16));
 temp |= (intel_crtc->fdi_lanes - 1) << 19;
 temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
 I915_WRITE(reg, temp | FDI_RX_PLL_ENABLE);

 POSTING_READ(reg);
 udelay(200);


 temp = I915_READ(reg);
 I915_WRITE(reg, temp | FDI_PCDCLK);

 POSTING_READ(reg);
 udelay(200);


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 if ((temp & FDI_TX_PLL_ENABLE) == 0) {
  I915_WRITE(reg, temp | FDI_TX_PLL_ENABLE);

  POSTING_READ(reg);
  udelay(100);
 }
}
