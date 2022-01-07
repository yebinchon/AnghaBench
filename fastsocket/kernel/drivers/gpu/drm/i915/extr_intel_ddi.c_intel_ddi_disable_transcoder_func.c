
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
typedef enum transcoder { ____Placeholder_transcoder } transcoder ;


 int I915_READ (int) ;
 int I915_WRITE (int,int) ;
 int TRANS_DDI_FUNC_CTL (int) ;
 int TRANS_DDI_FUNC_ENABLE ;
 int TRANS_DDI_PORT_MASK ;
 int TRANS_DDI_PORT_NONE ;

void intel_ddi_disable_transcoder_func(struct drm_i915_private *dev_priv,
           enum transcoder cpu_transcoder)
{
 uint32_t reg = TRANS_DDI_FUNC_CTL(cpu_transcoder);
 uint32_t val = I915_READ(reg);

 val &= ~(TRANS_DDI_FUNC_ENABLE | TRANS_DDI_PORT_MASK);
 val |= TRANS_DDI_PORT_NONE;
 I915_WRITE(reg, val);
}
