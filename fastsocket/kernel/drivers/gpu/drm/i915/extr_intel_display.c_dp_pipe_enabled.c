
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int DP_PIPE_MASK ;
 int DP_PORT_EN ;
 scalar_t__ HAS_PCH_CPT (int ) ;
 int I915_READ (int) ;
 int TRANS_DP_CTL (int) ;
 int TRANS_DP_PORT_SEL_MASK ;

__attribute__((used)) static bool dp_pipe_enabled(struct drm_i915_private *dev_priv,
       enum pipe pipe, u32 port_sel, u32 val)
{
 if ((val & DP_PORT_EN) == 0)
  return 0;

 if (HAS_PCH_CPT(dev_priv->dev)) {
  u32 trans_dp_ctl_reg = TRANS_DP_CTL(pipe);
  u32 trans_dp_ctl = I915_READ(trans_dp_ctl_reg);
  if ((trans_dp_ctl & TRANS_DP_PORT_SEL_MASK) != port_sel)
   return 0;
 } else {
  if ((val & DP_PIPE_MASK) != (pipe << 30))
   return 0;
 }
 return 1;
}
