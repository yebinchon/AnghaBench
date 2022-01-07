
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dev; TYPE_1__* info; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;


 int FDI_TX_CTL (int) ;
 int FDI_TX_PLL_ENABLE ;
 scalar_t__ HAS_DDI (int ) ;
 int I915_READ (int) ;
 int WARN (int,char*) ;

__attribute__((used)) static void assert_fdi_tx_pll_enabled(struct drm_i915_private *dev_priv,
          enum pipe pipe)
{
 int reg;
 u32 val;


 if (dev_priv->info->gen == 5)
  return;


 if (HAS_DDI(dev_priv->dev))
  return;

 reg = FDI_TX_CTL(pipe);
 val = I915_READ(reg);
 WARN(!(val & FDI_TX_PLL_ENABLE), "FDI TX PLL assertion failure, should be active but is disabled\n");
}
