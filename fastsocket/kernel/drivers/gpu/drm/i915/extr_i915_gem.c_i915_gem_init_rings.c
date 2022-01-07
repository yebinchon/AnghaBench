
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct drm_i915_private {int * ring; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;


 size_t BCS ;
 scalar_t__ HAS_BSD (struct drm_device*) ;
 size_t RCS ;
 size_t VCS ;
 int i915_gem_set_seqno (struct drm_device*,scalar_t__) ;
 int intel_cleanup_ring_buffer (int *) ;
 scalar_t__ intel_enable_blt (struct drm_device*) ;
 int intel_init_blt_ring_buffer (struct drm_device*) ;
 int intel_init_bsd_ring_buffer (struct drm_device*) ;
 int intel_init_render_ring_buffer (struct drm_device*) ;

__attribute__((used)) static int i915_gem_init_rings(struct drm_device *dev)
{
 struct drm_i915_private *dev_priv = dev->dev_private;
 int ret;

 ret = intel_init_render_ring_buffer(dev);
 if (ret)
  return ret;

 if (HAS_BSD(dev)) {
  ret = intel_init_bsd_ring_buffer(dev);
  if (ret)
   goto cleanup_render_ring;
 }

 if (intel_enable_blt(dev)) {
  ret = intel_init_blt_ring_buffer(dev);
  if (ret)
   goto cleanup_bsd_ring;
 }

 ret = i915_gem_set_seqno(dev, ((u32)~0 - 0x1000));
 if (ret)
  goto cleanup_blt_ring;

 return 0;

cleanup_blt_ring:
 intel_cleanup_ring_buffer(&dev_priv->ring[BCS]);
cleanup_bsd_ring:
 intel_cleanup_ring_buffer(&dev_priv->ring[VCS]);
cleanup_render_ring:
 intel_cleanup_ring_buffer(&dev_priv->ring[RCS]);

 return ret;
}
