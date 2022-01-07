
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;


 int DRM_ERROR (char*) ;
 int ECOBUS ;
 int FORCEWAKE_ACK_HSW ;
 int FORCEWAKE_ACK_TIMEOUT_MS ;
 int FORCEWAKE_KERNEL ;
 int FORCEWAKE_MT ;
 int FORCEWAKE_MT_ACK ;
 int I915_READ_NOTRACE (int ) ;
 int I915_WRITE_NOTRACE (int ,int ) ;
 scalar_t__ IS_HASWELL (int ) ;
 int POSTING_READ (int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int __gen6_gt_wait_for_thread_c0 (struct drm_i915_private*) ;
 scalar_t__ wait_for_atomic (int,int ) ;

__attribute__((used)) static void __gen6_gt_force_wake_mt_get(struct drm_i915_private *dev_priv)
{
 u32 forcewake_ack;

 if (IS_HASWELL(dev_priv->dev))
  forcewake_ack = FORCEWAKE_ACK_HSW;
 else
  forcewake_ack = FORCEWAKE_MT_ACK;

 if (wait_for_atomic((I915_READ_NOTRACE(forcewake_ack) & 1) == 0,
       FORCEWAKE_ACK_TIMEOUT_MS))
  DRM_ERROR("Timed out waiting for forcewake old ack to clear.\n");

 I915_WRITE_NOTRACE(FORCEWAKE_MT, _MASKED_BIT_ENABLE(FORCEWAKE_KERNEL));

 POSTING_READ(ECOBUS);

 if (wait_for_atomic((I915_READ_NOTRACE(forcewake_ack) & 1),
       FORCEWAKE_ACK_TIMEOUT_MS))
  DRM_ERROR("Timed out waiting for forcewake to ack request.\n");

 __gen6_gt_wait_for_thread_c0(dev_priv);
}
