
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DPFC_CONTROL ;
 int DPFC_CTL_EN ;
 int I915_READ (int ) ;

__attribute__((used)) static bool g4x_fbc_enabled(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;

 return I915_READ(DPFC_CONTROL) & DPFC_CTL_EN;
}
