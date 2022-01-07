
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_ring_buffer {int private; struct drm_device* dev; } ;
struct drm_device {int dummy; } ;


 scalar_t__ HAS_BROKEN_CS_TLB (struct drm_device*) ;
 int cleanup_pipe_control (struct intel_ring_buffer*) ;
 int drm_gem_object_unreference (int ) ;
 int to_gem_object (int ) ;

__attribute__((used)) static void render_ring_cleanup(struct intel_ring_buffer *ring)
{
 struct drm_device *dev = ring->dev;

 if (!ring->private)
  return;

 if (HAS_BROKEN_CS_TLB(dev))
  drm_gem_object_unreference(to_gem_object(ring->private));

 cleanup_pipe_control(ring);
}
