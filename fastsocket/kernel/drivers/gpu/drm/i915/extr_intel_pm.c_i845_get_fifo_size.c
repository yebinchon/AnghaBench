
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_DEBUG_KMS (char*,int,char*,int) ;
 int DSPARB ;
 int I915_READ (int ) ;

__attribute__((used)) static int i845_get_fifo_size(struct drm_device *dev, int plane)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 uint32_t dsparb = I915_READ(DSPARB);
 int size;

 size = dsparb & 0x7f;
 size >>= 2;

 DRM_DEBUG_KMS("FIFO size - (0x%08x) %s: %d\n", dsparb,
        plane ? "B" : "A",
        size);

 return size;
}
