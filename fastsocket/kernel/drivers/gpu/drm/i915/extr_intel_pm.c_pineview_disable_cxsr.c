
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DSPFW3 ;
 int I915_READ (int ) ;
 int I915_WRITE (int ,int) ;
 int PINEVIEW_SELF_REFRESH_EN ;

__attribute__((used)) static void pineview_disable_cxsr(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;


 I915_WRITE(DSPFW3, I915_READ(DSPFW3) & ~PINEVIEW_SELF_REFRESH_EN);
}
