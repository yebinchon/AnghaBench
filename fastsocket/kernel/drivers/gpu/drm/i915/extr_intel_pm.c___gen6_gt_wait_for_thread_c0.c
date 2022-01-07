
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dev; } ;


 int DRM_ERROR (char*) ;
 int GEN6_GT_THREAD_STATUS_CORE_MASK ;
 int GEN6_GT_THREAD_STATUS_CORE_MASK_HSW ;
 int GEN6_GT_THREAD_STATUS_REG ;
 int I915_READ_NOTRACE (int ) ;
 scalar_t__ IS_HASWELL (int ) ;
 scalar_t__ wait_for_atomic_us (int,int) ;

__attribute__((used)) static void __gen6_gt_wait_for_thread_c0(struct drm_i915_private *dev_priv)
{
 u32 gt_thread_status_mask;

 if (IS_HASWELL(dev_priv->dev))
  gt_thread_status_mask = GEN6_GT_THREAD_STATUS_CORE_MASK_HSW;
 else
  gt_thread_status_mask = GEN6_GT_THREAD_STATUS_CORE_MASK;




 if (wait_for_atomic_us((I915_READ_NOTRACE(GEN6_GT_THREAD_STATUS_REG) & gt_thread_status_mask) == 0, 500))
  DRM_ERROR("GT thread status wait timed out\n");
}
