
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;


 int GTFIFODBG ;
 int GT_FIFO_CPU_ERROR_MASK ;
 int I915_READ_NOTRACE (int ) ;
 int I915_WRITE_NOTRACE (int ,int) ;
 scalar_t__ WARN (int,char*,int) ;

void gen6_gt_check_fifodbg(struct drm_i915_private *dev_priv)
{
 u32 gtfifodbg;
 gtfifodbg = I915_READ_NOTRACE(GTFIFODBG);
 if (WARN(gtfifodbg & GT_FIFO_CPU_ERROR_MASK,
      "MMIO read or write has been dropped %x\n", gtfifodbg))
  I915_WRITE_NOTRACE(GTFIFODBG, GT_FIFO_CPU_ERROR_MASK);
}
