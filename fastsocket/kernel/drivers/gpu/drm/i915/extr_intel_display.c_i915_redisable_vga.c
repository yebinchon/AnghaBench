
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*) ;
 scalar_t__ I915_READ (int ) ;
 scalar_t__ VGA_DISP_DISABLE ;
 int i915_disable_vga (struct drm_device*) ;
 int i915_vgacntrl_reg (struct drm_device*) ;

void i915_redisable_vga(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 vga_reg = i915_vgacntrl_reg(dev);

 if (I915_READ(vga_reg) != VGA_DISP_DISABLE) {
  DRM_DEBUG_KMS("Something enabled VGA plane, disabling it\n");
  i915_disable_vga(dev);
 }
}
