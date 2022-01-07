
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_READ8 (int) ;
 int I915_WRITE8 (int ,int) ;
 int VGA_AR_DATA_READ ;
 int VGA_AR_INDEX ;

__attribute__((used)) static u8 i915_read_ar(struct drm_device *dev, u16 st01, u8 reg, u16 palette_enable)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 I915_READ8(st01);
 I915_WRITE8(VGA_AR_INDEX, palette_enable | reg);
 return I915_READ8(VGA_AR_DATA_READ);
}
