
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int ECOBUS ;
 int FORCEWAKE_KERNEL ;
 int FORCEWAKE_MT ;
 int I915_WRITE_NOTRACE (int ,int ) ;
 int POSTING_READ (int ) ;
 int _MASKED_BIT_DISABLE (int ) ;
 int gen6_gt_check_fifodbg (struct drm_i915_private*) ;

__attribute__((used)) static void __gen6_gt_force_wake_mt_put(struct drm_i915_private *dev_priv)
{
 I915_WRITE_NOTRACE(FORCEWAKE_MT, _MASKED_BIT_DISABLE(FORCEWAKE_KERNEL));

 POSTING_READ(ECOBUS);
 gen6_gt_check_fifodbg(dev_priv);
}
