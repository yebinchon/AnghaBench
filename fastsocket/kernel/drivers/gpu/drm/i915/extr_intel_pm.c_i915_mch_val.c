
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;
struct drm_i915_private {int dummy; } ;


 unsigned long I915_READ (int ) ;
 unsigned long I915_READ8 (int ) ;
 int TR1 ;
 int TSFS ;
 unsigned long TSFS_INTR_MASK ;
 unsigned long TSFS_SLOPE_MASK ;
 unsigned long TSFS_SLOPE_SHIFT ;

unsigned long i915_mch_val(struct drm_i915_private *dev_priv)
{
 unsigned long m, x, b;
 u32 tsfs;

 tsfs = I915_READ(TSFS);

 m = ((tsfs & TSFS_SLOPE_MASK) >> TSFS_SLOPE_SHIFT);
 x = I915_READ8(TR1);

 b = tsfs & TSFS_INTR_MASK;

 return ((m * x) / 127) - b;
}
