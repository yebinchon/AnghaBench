
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 scalar_t__ HAS_PCH_CPT (int ) ;
 int PORT_ENABLE ;
 int PORT_TRANS_SEL_CPT (int) ;
 int PORT_TRANS_SEL_MASK ;
 int TRANSCODER (int) ;
 int TRANSCODER_MASK ;

__attribute__((used)) static bool hdmi_pipe_enabled(struct drm_i915_private *dev_priv,
         enum pipe pipe, u32 val)
{
 if ((val & PORT_ENABLE) == 0)
  return 0;

 if (HAS_PCH_CPT(dev_priv->dev)) {
  if ((val & PORT_TRANS_SEL_MASK) != PORT_TRANS_SEL_CPT(pipe))
   return 0;
 } else {
  if ((val & TRANSCODER_MASK) != TRANSCODER(pipe))
   return 0;
 }
 return 1;
}
