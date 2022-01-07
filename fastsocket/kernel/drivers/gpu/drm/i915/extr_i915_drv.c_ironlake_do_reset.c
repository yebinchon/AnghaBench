
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int GRDOM_MEDIA ;
 int GRDOM_RENDER ;
 int GRDOM_RESET_ENABLE ;
 int I915_READ (scalar_t__) ;
 int I915_WRITE (scalar_t__,int) ;
 scalar_t__ ILK_GDSR ;
 scalar_t__ MCHBAR_MIRROR_BASE ;
 int wait_for (int,int) ;

__attribute__((used)) static int ironlake_do_reset(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 gdrst;
 int ret;

 gdrst = I915_READ(MCHBAR_MIRROR_BASE + ILK_GDSR);
 I915_WRITE(MCHBAR_MIRROR_BASE + ILK_GDSR,
     gdrst | GRDOM_RENDER | GRDOM_RESET_ENABLE);
 ret = wait_for(I915_READ(MCHBAR_MIRROR_BASE + ILK_GDSR) & 0x1, 500);
 if (ret)
  return ret;


 gdrst = I915_READ(MCHBAR_MIRROR_BASE + ILK_GDSR);
 I915_WRITE(MCHBAR_MIRROR_BASE + ILK_GDSR,
     gdrst | GRDOM_MEDIA | GRDOM_RESET_ENABLE);
 return wait_for(I915_READ(MCHBAR_MIRROR_BASE + ILK_GDSR) & 0x1, 500);
}
