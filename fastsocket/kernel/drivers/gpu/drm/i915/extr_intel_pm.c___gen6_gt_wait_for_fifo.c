
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {scalar_t__ gt_fifo_count; } ;


 int GT_FIFO_FREE_ENTRIES ;
 scalar_t__ GT_FIFO_NUM_RESERVED_ENTRIES ;
 scalar_t__ I915_READ_NOTRACE (int ) ;
 scalar_t__ WARN_ON (int) ;
 int udelay (int) ;

int __gen6_gt_wait_for_fifo(struct drm_i915_private *dev_priv)
{
 int ret = 0;

 if (dev_priv->gt_fifo_count < GT_FIFO_NUM_RESERVED_ENTRIES) {
  int loop = 500;
  u32 fifo = I915_READ_NOTRACE(GT_FIFO_FREE_ENTRIES);
  while (fifo <= GT_FIFO_NUM_RESERVED_ENTRIES && loop--) {
   udelay(10);
   fifo = I915_READ_NOTRACE(GT_FIFO_FREE_ENTRIES);
  }
  if (WARN_ON(loop < 0 && fifo <= GT_FIFO_NUM_RESERVED_ENTRIES))
   ++ret;
  dev_priv->gt_fifo_count = fifo;
 }
 dev_priv->gt_fifo_count--;

 return ret;
}
