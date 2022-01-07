
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc {int pipe; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {struct drm_device* dev; } ;


 int FDI_LINK_TRAIN_NONE ;
 int FDI_LINK_TRAIN_PATTERN_1 ;
 int FDI_LINK_TRAIN_PATTERN_1_CPT ;
 int FDI_LINK_TRAIN_PATTERN_MASK_CPT ;
 int FDI_RX_CHICKEN (int) ;
 int FDI_RX_CTL (int) ;
 int FDI_RX_ENABLE ;
 int FDI_RX_PHASE_SYNC_POINTER_OVR ;
 int FDI_TX_CTL (int) ;
 int FDI_TX_ENABLE ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_IBX (struct drm_device*) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int PIPECONF (int) ;
 int PIPECONF_BPC_MASK ;
 int POSTING_READ (int) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_fdi_disable(struct drm_crtc *crtc)
{
 struct drm_device *dev = crtc->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 int pipe = intel_crtc->pipe;
 u32 reg, temp;


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 I915_WRITE(reg, temp & ~FDI_TX_ENABLE);
 POSTING_READ(reg);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~(0x7 << 16);
 temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
 I915_WRITE(reg, temp & ~FDI_RX_ENABLE);

 POSTING_READ(reg);
 udelay(100);


 if (HAS_PCH_IBX(dev)) {
  I915_WRITE(FDI_RX_CHICKEN(pipe), FDI_RX_PHASE_SYNC_POINTER_OVR);
 }


 reg = FDI_TX_CTL(pipe);
 temp = I915_READ(reg);
 temp &= ~FDI_LINK_TRAIN_NONE;
 temp |= FDI_LINK_TRAIN_PATTERN_1;
 I915_WRITE(reg, temp);

 reg = FDI_RX_CTL(pipe);
 temp = I915_READ(reg);
 if (HAS_PCH_CPT(dev)) {
  temp &= ~FDI_LINK_TRAIN_PATTERN_MASK_CPT;
  temp |= FDI_LINK_TRAIN_PATTERN_1_CPT;
 } else {
  temp &= ~FDI_LINK_TRAIN_NONE;
  temp |= FDI_LINK_TRAIN_PATTERN_1;
 }

 temp &= ~(0x07 << 16);
 temp |= (I915_READ(PIPECONF(pipe)) & PIPECONF_BPC_MASK) << 11;
 I915_WRITE(reg, temp);

 POSTING_READ(reg);
 udelay(100);
}
