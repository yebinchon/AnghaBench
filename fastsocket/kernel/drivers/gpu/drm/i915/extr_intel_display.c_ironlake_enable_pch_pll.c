
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct intel_pch_pll {scalar_t__ refcount; int pll_reg; int on; int active; } ;
struct TYPE_7__ {int id; } ;
struct TYPE_8__ {TYPE_3__ base; TYPE_1__* dev; } ;
struct intel_crtc {TYPE_4__ base; struct intel_pch_pll* pch_pll; } ;
struct drm_i915_private {TYPE_2__* info; } ;
struct TYPE_6__ {int gen; } ;
struct TYPE_5__ {struct drm_i915_private* dev_private; } ;


 int BUG_ON (int) ;
 int DPLL_VCO_ENABLE ;
 int DRM_DEBUG_KMS (char*,int,...) ;
 int I915_READ (int) ;
 int I915_WRITE (int,int ) ;
 int POSTING_READ (int) ;
 scalar_t__ WARN_ON (int) ;
 int assert_pch_pll_enabled (struct drm_i915_private*,struct intel_pch_pll*,int *) ;
 int assert_pch_refclk_enabled (struct drm_i915_private*) ;
 int udelay (int) ;

__attribute__((used)) static void ironlake_enable_pch_pll(struct intel_crtc *intel_crtc)
{
 struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
 struct intel_pch_pll *pll;
 int reg;
 u32 val;


 BUG_ON(dev_priv->info->gen < 5);
 pll = intel_crtc->pch_pll;
 if (pll == ((void*)0))
  return;

 if (WARN_ON(pll->refcount == 0))
  return;

 DRM_DEBUG_KMS("enable PCH PLL %x (active %d, on? %d)for crtc %d\n",
        pll->pll_reg, pll->active, pll->on,
        intel_crtc->base.base.id);


 assert_pch_refclk_enabled(dev_priv);

 if (pll->active++ && pll->on) {
  assert_pch_pll_enabled(dev_priv, pll, ((void*)0));
  return;
 }

 DRM_DEBUG_KMS("enabling PCH PLL %x\n", pll->pll_reg);

 reg = pll->pll_reg;
 val = I915_READ(reg);
 val |= DPLL_VCO_ENABLE;
 I915_WRITE(reg, val);
 POSTING_READ(reg);
 udelay(200);

 pll->on = 1;
}
