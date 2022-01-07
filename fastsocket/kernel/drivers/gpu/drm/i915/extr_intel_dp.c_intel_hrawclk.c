
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int CLKCFG ;
 int CLKCFG_FSB_MASK ;
 int I915_READ (int ) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;

__attribute__((used)) static int
intel_hrawclk(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t clkcfg;


 if (IS_VALLEYVIEW(dev))
  return 200;

 clkcfg = I915_READ(CLKCFG);
 switch (clkcfg & CLKCFG_FSB_MASK) {
 case 131:
  return 100;
 case 130:
  return 133;
 case 129:
  return 166;
 case 128:
  return 200;
 case 135:
  return 266;
 case 134:
  return 333;

 case 133:
 case 132:
  return 400;
 default:
  return 133;
 }
}
