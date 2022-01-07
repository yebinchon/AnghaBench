
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_device {TYPE_2__* dev_private; } ;
struct TYPE_4__ {int num_pch_pll; TYPE_1__* pch_plls; } ;
typedef TYPE_2__ drm_i915_private_t ;
struct TYPE_3__ {int fp1_reg; int fp0_reg; int pll_reg; } ;


 int DRM_DEBUG_KMS (char*) ;
 int _PCH_DPLL (int) ;
 int _PCH_FP0 (int) ;
 int _PCH_FP1 (int) ;

__attribute__((used)) static void intel_pch_pll_init(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 int i;

 if (dev_priv->num_pch_pll == 0) {
  DRM_DEBUG_KMS("No PCH PLLs on this hardware, skipping initialisation\n");
  return;
 }

 for (i = 0; i < dev_priv->num_pch_pll; i++) {
  dev_priv->pch_plls[i].pll_reg = _PCH_DPLL(i);
  dev_priv->pch_plls[i].fp0_reg = _PCH_FP0(i);
  dev_priv->pch_plls[i].fp1_reg = _PCH_FP1(i);
 }
}
