
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct drm_device* dev; } ;
struct intel_encoder {TYPE_1__ base; } ;
struct intel_crt {int adpa_reg; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int ADPA_DAC_ENABLE ;
 int ADPA_HSYNC_CNTL_DISABLE ;
 int ADPA_VSYNC_CNTL_DISABLE ;




 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 struct intel_crt* intel_encoder_to_crt (struct intel_encoder*) ;

__attribute__((used)) static void intel_crt_set_dpms(struct intel_encoder *encoder, int mode)
{
 struct drm_device *dev = encoder->base.dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 struct intel_crt *crt = intel_encoder_to_crt(encoder);
 u32 temp;

 temp = I915_READ(crt->adpa_reg);
 temp &= ~(ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE);
 temp &= ~ADPA_DAC_ENABLE;

 switch (mode) {
 case 130:
  temp |= ADPA_DAC_ENABLE;
  break;
 case 129:
  temp |= ADPA_DAC_ENABLE | ADPA_HSYNC_CNTL_DISABLE;
  break;
 case 128:
  temp |= ADPA_DAC_ENABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 case 131:
  temp |= ADPA_HSYNC_CNTL_DISABLE | ADPA_VSYNC_CNTL_DISABLE;
  break;
 }

 I915_WRITE(crt->adpa_reg, temp);
}
