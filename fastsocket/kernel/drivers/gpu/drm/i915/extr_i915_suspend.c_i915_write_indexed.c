
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int I915_WRITE8 (int ,int ) ;

__attribute__((used)) static void i915_write_indexed(struct drm_device *dev, u16 index_port, u16 data_port, u8 reg, u8 val)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 I915_WRITE8(index_port, reg);
 I915_WRITE8(data_port, val);
}
