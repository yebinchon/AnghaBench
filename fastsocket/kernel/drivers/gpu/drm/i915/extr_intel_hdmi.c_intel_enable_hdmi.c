
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct intel_hdmi {int sdvox_reg; scalar_t__ has_audio; } ;
struct TYPE_4__ {struct drm_crtc* crtc; struct drm_device* dev; } ;
struct intel_encoder {TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_3__ {int pipe; } ;


 scalar_t__ HAS_PCH_IBX (struct drm_device*) ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PIPE_B ;
 int POSTING_READ (int ) ;
 int SDVO_AUDIO_ENABLE ;
 int SDVO_ENABLE ;
 int SDVO_PIPE_B_SELECT ;
 struct intel_hdmi* enc_to_intel_hdmi (TYPE_2__*) ;
 TYPE_1__* to_intel_crtc (struct drm_crtc*) ;

__attribute__((used)) static void intel_enable_hdmi(struct intel_encoder *encoder)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_hdmi *intel_hdmi = enc_to_intel_hdmi(&encoder->base);
 u32 temp;
 u32 enable_bits = SDVO_ENABLE;

 if (intel_hdmi->has_audio)
  enable_bits |= SDVO_AUDIO_ENABLE;

 temp = I915_READ(intel_hdmi->sdvox_reg);



 if (HAS_PCH_IBX(dev)) {
  struct drm_crtc *crtc = encoder->base.crtc;
  int pipe = crtc ? to_intel_crtc(crtc)->pipe : -1;


  if (pipe == PIPE_B)
   enable_bits |= SDVO_PIPE_B_SELECT;
 }




 if (HAS_PCH_SPLIT(dev)) {
  I915_WRITE(intel_hdmi->sdvox_reg, temp & ~SDVO_ENABLE);
  POSTING_READ(intel_hdmi->sdvox_reg);
 }

 temp |= enable_bits;

 I915_WRITE(intel_hdmi->sdvox_reg, temp);
 POSTING_READ(intel_hdmi->sdvox_reg);




 if (HAS_PCH_SPLIT(dev)) {
  I915_WRITE(intel_hdmi->sdvox_reg, temp);
  POSTING_READ(intel_hdmi->sdvox_reg);
 }
}
