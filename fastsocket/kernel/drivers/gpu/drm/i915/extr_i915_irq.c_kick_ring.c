
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_ring_buffer {int name; struct drm_device* dev; } ;
struct drm_i915_private {int dummy; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 int DRM_ERROR (char*,int ) ;
 int I915_READ_CTL (struct intel_ring_buffer*) ;
 int I915_WRITE_CTL (struct intel_ring_buffer*,int) ;
 int RING_WAIT ;

__attribute__((used)) static bool kick_ring(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;
 struct drm_i915_private *dev_priv = dev->dev_private;
 u32 tmp = I915_READ_CTL(ring);
 if (tmp & RING_WAIT) {
  DRM_ERROR("Kicking stuck wait on %s\n",
     ring->name);
  I915_WRITE_CTL(ring, tmp);
  return 1;
 }
 return 0;
}
