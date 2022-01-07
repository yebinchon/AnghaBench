
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int ADPA_DAC_ENABLE ;
 int ADPA_PIPE_SELECT (int) ;
 int ADPA_PIPE_SELECT_MASK ;
 scalar_t__ HAS_PCH_CPT (int ) ;
 int PORT_TRANS_SEL_CPT (int) ;
 int PORT_TRANS_SEL_MASK ;

__attribute__((used)) static bool adpa_pipe_enabled(struct drm_i915_private *dev_priv,
         enum pipe pipe, u32 val)
{
 if ((val & ADPA_DAC_ENABLE) == 0)
  return 0;
 if (HAS_PCH_CPT(dev_priv->dev)) {
  if ((val & PORT_TRANS_SEL_MASK) != PORT_TRANS_SEL_CPT(pipe))
   return 0;
 } else {
  if ((val & ADPA_PIPE_SELECT_MASK) != ADPA_PIPE_SELECT(pipe))
   return 0;
 }
 return 1;
}
