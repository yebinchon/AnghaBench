
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_2__ {int gen; } ;


 int BUG () ;
 int CXT_SIZE ;
 int GEN6_CXT_TOTAL_SIZE (int ) ;
 int GEN7_CXT_SIZE ;
 int GEN7_CXT_TOTAL_SIZE (int ) ;
 int HSW_CXT_TOTAL_SIZE (int ) ;
 int I915_READ (int ) ;
 TYPE_1__* INTEL_INFO (struct drm_device*) ;
 int IS_HASWELL (struct drm_device*) ;

__attribute__((used)) static int get_context_size(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;
 u32 reg;

 switch (INTEL_INFO(dev)->gen) {
 case 6:
  reg = I915_READ(CXT_SIZE);
  ret = GEN6_CXT_TOTAL_SIZE(reg) * 64;
  break;
 case 7:
  reg = I915_READ(GEN7_CXT_SIZE);
  if (IS_HASWELL(dev))
   ret = HSW_CXT_TOTAL_SIZE(reg) * 64;
  else
   ret = GEN7_CXT_TOTAL_SIZE(reg) * 64;
  break;
 default:
  BUG();
 }

 return ret;
}
