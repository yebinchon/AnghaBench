
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dev; } ;


 int GEN7_FF_DS_SCHED_HW ;
 int GEN7_FF_SCHED_MASK ;
 int GEN7_FF_THREAD_MODE ;
 int GEN7_FF_TS_SCHED_HW ;
 int GEN7_FF_VS_REF_CNT_FFME ;
 int GEN7_FF_VS_SCHED_HW ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int ) ;
 scalar_t__ IS_HASWELL (int ) ;

__attribute__((used)) static void gen7_setup_fixed_func_scheduler(struct drm_i915_private *dev_priv)
{
 uint32_t reg = I915_READ(GEN7_FF_THREAD_MODE);

 reg &= ~GEN7_FF_SCHED_MASK;
 reg |= GEN7_FF_TS_SCHED_HW;
 reg |= GEN7_FF_VS_SCHED_HW;
 reg |= GEN7_FF_DS_SCHED_HW;


 if (IS_HASWELL(dev_priv->dev))
  reg &= ~GEN7_FF_VS_REF_CNT_FFME;

 I915_WRITE(GEN7_FF_THREAD_MODE, reg);
}
