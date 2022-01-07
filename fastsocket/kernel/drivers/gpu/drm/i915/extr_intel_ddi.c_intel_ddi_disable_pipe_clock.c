
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* dev; } ;
struct intel_crtc {int cpu_transcoder; TYPE_2__ base; } ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 int I915_WRITE (int ,int ) ;
 int TRANSCODER_EDP ;
 int TRANS_CLK_SEL (int) ;
 int TRANS_CLK_SEL_DISABLED ;

void intel_ddi_disable_pipe_clock(struct intel_crtc *intel_crtc)
{
 struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
 enum transcoder cpu_transcoder = intel_crtc->cpu_transcoder;

 if (cpu_transcoder != TRANSCODER_EDP)
  I915_WRITE(TRANS_CLK_SEL(cpu_transcoder),
      TRANS_CLK_SEL_DISABLED);
}
