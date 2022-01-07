
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;


 int DRM_ERROR (char*) ;
 int FORCEWAKE_ACK_TIMEOUT_MS ;
 int FORCEWAKE_ACK_VLV ;
 int FORCEWAKE_KERNEL ;
 int FORCEWAKE_VLV ;
 int I915_READ_NOTRACE (int ) ;
 int I915_WRITE_NOTRACE (int ,int ) ;
 int _MASKED_BIT_ENABLE (int ) ;
 int __gen6_gt_wait_for_thread_c0 (struct drm_i915_private*) ;
 scalar_t__ wait_for_atomic (int,int ) ;

__attribute__((used)) static void vlv_force_wake_get(struct drm_i915_private *dev_priv)
{
 if (wait_for_atomic((I915_READ_NOTRACE(FORCEWAKE_ACK_VLV) & 1) == 0,
       FORCEWAKE_ACK_TIMEOUT_MS))
  DRM_ERROR("Timed out waiting for forcewake old ack to clear.\n");

 I915_WRITE_NOTRACE(FORCEWAKE_VLV, _MASKED_BIT_ENABLE(FORCEWAKE_KERNEL));

 if (wait_for_atomic((I915_READ_NOTRACE(FORCEWAKE_ACK_VLV) & 1),
       FORCEWAKE_ACK_TIMEOUT_MS))
  DRM_ERROR("Timed out waiting for forcewake to ack request.\n");

 __gen6_gt_wait_for_thread_c0(dev_priv);
}
