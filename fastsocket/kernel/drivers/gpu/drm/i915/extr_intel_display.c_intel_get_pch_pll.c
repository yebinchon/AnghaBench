
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct intel_pch_pll {scalar_t__ refcount; int on; int pll_reg; int fp0_reg; int active; } ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_2__ base; TYPE_1__* dev; } ;
struct intel_crtc {int pipe; struct intel_pch_pll* pch_pll; TYPE_3__ base; } ;
struct drm_i915_private {int num_pch_pll; struct intel_pch_pll* pch_plls; int dev; } ;
struct TYPE_4__ {struct drm_i915_private* dev_private; } ;


 int DPLL_VCO_ENABLE ;
 int DRM_DEBUG_DRIVER (char*,int,...) ;
 int DRM_DEBUG_KMS (char*,int ,int ,...) ;
 scalar_t__ HAS_PCH_IBX (int ) ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int POSTING_READ (int ) ;
 int udelay (int) ;

__attribute__((used)) static struct intel_pch_pll *intel_get_pch_pll(struct intel_crtc *intel_crtc, u32 dpll, u32 fp)
{
 struct drm_i915_private *dev_priv = intel_crtc->base.dev->dev_private;
 struct intel_pch_pll *pll;
 int i;

 pll = intel_crtc->pch_pll;
 if (pll) {
  DRM_DEBUG_KMS("CRTC:%d reusing existing PCH PLL %x\n",
         intel_crtc->base.base.id, pll->pll_reg);
  goto prepare;
 }

 if (HAS_PCH_IBX(dev_priv->dev)) {

  i = intel_crtc->pipe;
  pll = &dev_priv->pch_plls[i];

  DRM_DEBUG_KMS("CRTC:%d using pre-allocated PCH PLL %x\n",
         intel_crtc->base.base.id, pll->pll_reg);

  goto found;
 }

 for (i = 0; i < dev_priv->num_pch_pll; i++) {
  pll = &dev_priv->pch_plls[i];


  if (pll->refcount == 0)
   continue;

  if (dpll == (I915_READ(pll->pll_reg) & 0x7fffffff) &&
      fp == I915_READ(pll->fp0_reg)) {
   DRM_DEBUG_KMS("CRTC:%d sharing existing PCH PLL %x (refcount %d, ative %d)\n",
          intel_crtc->base.base.id,
          pll->pll_reg, pll->refcount, pll->active);

   goto found;
  }
 }


 for (i = 0; i < dev_priv->num_pch_pll; i++) {
  pll = &dev_priv->pch_plls[i];
  if (pll->refcount == 0) {
   DRM_DEBUG_KMS("CRTC:%d allocated PCH PLL %x\n",
          intel_crtc->base.base.id, pll->pll_reg);
   goto found;
  }
 }

 return ((void*)0);

found:
 intel_crtc->pch_pll = pll;
 pll->refcount++;
 DRM_DEBUG_DRIVER("using pll %d for pipe %d\n", i, intel_crtc->pipe);
prepare:
 DRM_DEBUG_DRIVER("switching PLL %x off\n", pll->pll_reg);


 I915_WRITE(pll->pll_reg, dpll & ~DPLL_VCO_ENABLE);
 POSTING_READ(pll->pll_reg);
 udelay(150);

 I915_WRITE(pll->fp0_reg, fp);
 I915_WRITE(pll->pll_reg, dpll & ~DPLL_VCO_ENABLE);
 pll->on = 0;
 return pll;
}
