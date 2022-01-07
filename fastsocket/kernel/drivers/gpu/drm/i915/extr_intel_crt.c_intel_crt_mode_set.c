
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_crtc {scalar_t__ pipe; } ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_encoder {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct drm_display_mode {int flags; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;


 int ADPA_HOTPLUG_BITS ;
 int ADPA_HSYNC_ACTIVE_HIGH ;
 int ADPA_PIPE_A_SELECT ;
 int ADPA_PIPE_B_SELECT ;
 int ADPA_VSYNC_ACTIVE_HIGH ;
 int BCLRPAT (scalar_t__) ;
 int DRM_MODE_FLAG_PHSYNC ;
 int DRM_MODE_FLAG_PVSYNC ;
 scalar_t__ HAS_PCH_CPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_LPT (struct drm_device*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_WRITE (int ,int ) ;
 int PORT_TRANS_SEL_CPT (scalar_t__) ;
 struct intel_crt* intel_encoder_to_crt (int ) ;
 struct intel_crtc* to_intel_crtc (struct drm_crtc*) ;
 int to_intel_encoder (struct drm_encoder*) ;

__attribute__((used)) static void intel_crt_mode_set(struct drm_encoder *encoder,
          struct drm_display_mode *mode,
          struct drm_display_mode *adjusted_mode)
{

 struct drm_device *dev = encoder->dev;
 struct drm_crtc *crtc = encoder->crtc;
 struct intel_crt *crt =
  intel_encoder_to_crt(to_intel_encoder(encoder));
 struct intel_crtc *intel_crtc = to_intel_crtc(crtc);
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 adpa;

 if (HAS_PCH_SPLIT(dev))
  adpa = ADPA_HOTPLUG_BITS;
 else
  adpa = 0;

 if (adjusted_mode->flags & DRM_MODE_FLAG_PHSYNC)
  adpa |= ADPA_HSYNC_ACTIVE_HIGH;
 if (adjusted_mode->flags & DRM_MODE_FLAG_PVSYNC)
  adpa |= ADPA_VSYNC_ACTIVE_HIGH;


 if (HAS_PCH_LPT(dev))
  ;
 else if (HAS_PCH_CPT(dev))
  adpa |= PORT_TRANS_SEL_CPT(intel_crtc->pipe);
 else if (intel_crtc->pipe == 0)
  adpa |= ADPA_PIPE_A_SELECT;
 else
  adpa |= ADPA_PIPE_B_SELECT;

 if (!HAS_PCH_SPLIT(dev))
  I915_WRITE(BCLRPAT(intel_crtc->pipe), 0);

 I915_WRITE(crt->adpa_reg, adpa);
}
