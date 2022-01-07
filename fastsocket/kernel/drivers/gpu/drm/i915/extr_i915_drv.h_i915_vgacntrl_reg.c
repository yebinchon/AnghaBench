
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_device {int dummy; } ;


 int CPU_VGACNTRL ;
 scalar_t__ HAS_PCH_SPLIT (struct drm_device*) ;
 scalar_t__ IS_VALLEYVIEW (struct drm_device*) ;
 int VGACNTRL ;
 int VLV_VGACNTRL ;

__attribute__((used)) static inline uint32_t i915_vgacntrl_reg(struct drm_device *dev)
{
 if (HAS_PCH_SPLIT(dev))
  return CPU_VGACNTRL;
 else if (IS_VALLEYVIEW(dev))
  return VLV_VGACNTRL;
 else
  return VGACNTRL;
}
