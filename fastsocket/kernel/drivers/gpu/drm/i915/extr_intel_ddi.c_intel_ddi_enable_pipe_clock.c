
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_encoder {int dummy; } ;
struct drm_crtc {TYPE_1__* dev; } ;
struct intel_crtc {int cpu_transcoder; struct drm_crtc base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
typedef enum port { ____Placeholder_port } port ;
struct TYPE_2__ {struct drm_i915_private* dev_private; } ;


 int I915_WRITE (int ,int ) ;
 int TRANSCODER_EDP ;
 int TRANS_CLK_SEL (int) ;
 int TRANS_CLK_SEL_PORT (int) ;
 struct intel_encoder* intel_ddi_get_crtc_encoder (struct drm_crtc*) ;
 int intel_ddi_get_encoder_port (struct intel_encoder*) ;

void intel_ddi_enable_pipe_clock(struct intel_crtc *intel_crtc)
{
 struct drm_crtc *crtc = &intel_crtc->base;
 struct drm_i915_private *dev_priv = crtc->dev->dev_private;
 struct intel_encoder *intel_encoder = intel_ddi_get_crtc_encoder(crtc);
 enum port port = intel_ddi_get_encoder_port(intel_encoder);
 enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;

 if (cpu_transcoder != TRANSCODER_EDP)
  I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
      TRANS_CLK_SEL_PORT(port));
}
