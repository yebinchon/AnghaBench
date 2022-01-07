
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dev; TYPE_1__* info; } ;
typedef enum pipe { ____Placeholder_pipe } pipe ;
struct TYPE_2__ {int gen; } ;


 int BUG_ON (int) ;
 int DPLL (int) ;
 int DPLL_VCO_ENABLE ;
 int I915_READ (int) ;
 int I915_WRITE (int,int ) ;
 int IS_I830 (int ) ;
 scalar_t__ IS_MOBILE (int ) ;
 int IS_VALLEYVIEW (int ) ;
 int POSTING_READ (int) ;
 int assert_panel_unlocked (struct drm_i915_private*,int) ;
 int udelay (int) ;

__attribute__((used)) static void intel_enable_pll(struct drm_i915_private *dev_priv, enum pipe pipe)
{
 int reg;
 u32 val;


 BUG_ON(!IS_VALLEYVIEW(dev_priv->dev) && dev_priv->info->gen >= 5);


 if (IS_MOBILE(dev_priv->dev) && !IS_I830(dev_priv->dev))
  assert_panel_unlocked(dev_priv, pipe);

 reg = DPLL(pipe);
 val = I915_READ(reg);
 val |= DPLL_VCO_ENABLE;


 I915_WRITE(reg, val);
 POSTING_READ(reg);
 udelay(150);
 I915_WRITE(reg, val);
 POSTING_READ(reg);
 udelay(150);
 I915_WRITE(reg, val);
 POSTING_READ(reg);
 udelay(150);
}
