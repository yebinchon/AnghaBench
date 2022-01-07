
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gtt_mtrr; } ;
struct drm_i915_private {TYPE_1__ mm; } ;


 int DRM_INFO (char*) ;
 int MTRR_TYPE_WRCOMB ;
 scalar_t__ cpu_has_pat ;
 int mtrr_add (unsigned long,unsigned long,int ,int) ;

__attribute__((used)) static void
i915_mtrr_setup(struct drm_i915_private *dev_priv, unsigned long base,
  unsigned long size)
{
 dev_priv->mm.gtt_mtrr = -1;
 dev_priv->mm.gtt_mtrr = mtrr_add(base, size, MTRR_TYPE_WRCOMB, 1);
 if (dev_priv->mm.gtt_mtrr < 0) {
  DRM_INFO("MTRR allocation failed.  Graphics "
    "performance may suffer.\n");
 }
}
