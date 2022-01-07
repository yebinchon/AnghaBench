
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct intel_sdvo {int sdvo_reg; } ;
struct TYPE_5__ {TYPE_3__* dev; struct drm_crtc* crtc; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct drm_i915_private {int dummy; } ;
struct drm_crtc {int dummy; } ;
struct TYPE_7__ {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int pipe; } ;


 int DRM_MODE_DPMS_OFF ;
 scalar_t__ HAS_PCH_IBX (TYPE_3__*) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int SDVO_ENABLE ;
 int SDVO_PIPE_B_SELECT ;
 int intel_sdvo_set_active_outputs (struct intel_sdvo*,int ) ;
 int intel_sdvo_set_encoder_power_state (struct intel_sdvo*,int ) ;
 int intel_sdvo_write_sdvox (struct intel_sdvo*,int) ;
 int intel_wait_for_vblank (TYPE_3__*,int) ;
 int msleep (int) ;
 TYPE_2__* to_intel_crtc (struct drm_crtc*) ;
 struct intel_sdvo* to_intel_sdvo (TYPE_1__*) ;

__attribute__((used)) static void intel_disable_sdvo(struct intel_encoder *encoder)
{
 struct drm_i915_private *dev_priv = encoder->base.dev->dev_private;
 struct intel_sdvo *intel_sdvo = to_intel_sdvo(&encoder->base);
 u32 temp;

 intel_sdvo_set_active_outputs(intel_sdvo, 0);
 if (0)
  intel_sdvo_set_encoder_power_state(intel_sdvo,
         DRM_MODE_DPMS_OFF);

 temp = I915_READ(intel_sdvo->sdvo_reg);
 if ((temp & SDVO_ENABLE) != 0) {


  if (HAS_PCH_IBX(encoder->base.dev)) {
   struct drm_crtc *crtc = encoder->base.crtc;
   int pipe = crtc ? to_intel_crtc(crtc)->pipe : -1;

   if (temp & SDVO_PIPE_B_SELECT) {
    temp &= ~SDVO_PIPE_B_SELECT;
    I915_WRITE(intel_sdvo->sdvo_reg, temp);
    POSTING_READ(intel_sdvo->sdvo_reg);


    I915_WRITE(intel_sdvo->sdvo_reg, temp);
    POSTING_READ(intel_sdvo->sdvo_reg);



    if (crtc)
     intel_wait_for_vblank(encoder->base.dev, pipe);
    else
     msleep(50);
   }
  }

  intel_sdvo_write_sdvox(intel_sdvo, temp & ~SDVO_ENABLE);
 }
}
