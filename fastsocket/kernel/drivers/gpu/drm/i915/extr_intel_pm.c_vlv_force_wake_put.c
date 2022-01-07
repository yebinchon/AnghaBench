
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int FORCEWAKE_ACK_VLV ;
 int FORCEWAKE_KERNEL ;
 int FORCEWAKE_VLV ;
 int I915_WRITE_NOTRACE (int ,int ) ;
 int POSTING_READ (int ) ;
 int _MASKED_BIT_DISABLE (int ) ;
 int gen6_gt_check_fifodbg (struct drm_i915_private*) ;

__attribute__((used)) static void vlv_force_wake_put(struct drm_i915_private *dev_priv)
{
 I915_WRITE_NOTRACE(FORCEWAKE_VLV, _MASKED_BIT_DISABLE(FORCEWAKE_KERNEL));

 POSTING_READ(FORCEWAKE_ACK_VLV);
 gen6_gt_check_fifodbg(dev_priv);
}
