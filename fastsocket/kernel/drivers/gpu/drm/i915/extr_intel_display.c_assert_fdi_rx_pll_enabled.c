
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;


 int FDI_RX_CTL (int) ;
 int FDI_RX_PLL_ENABLE ;
 int I915_READ (int) ;
 int WARN (int,char*) ;

__attribute__((used)) static void assert_fdi_rx_pll_enabled(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 int reg;
 u32 val;

 reg = FDI_RX_CTL(pipe);
 val = I915_READ(reg);
 WARN(!(val & FDI_RX_PLL_ENABLE), "FDI RX PLL assertion failure, should be active but is disabled\n");
}
