
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct intel_ring_buffer {int (* cleanup ) (struct intel_ring_buffer*) ;TYPE_2__* obj; int virtual_start; int name; TYPE_1__* dev; } ;
struct drm_i915_private {int dummy; } ;
struct TYPE_4__ {int base; } ;
struct TYPE_3__ {struct drm_i915_private* dev_private; } ;


 int DRM_ERROR (char*,int ,int) ;
 int I915_WRITE_CTL (struct intel_ring_buffer*,int ) ;
 int cleanup_status_page (struct intel_ring_buffer*) ;
 int drm_gem_object_unreference (int *) ;
 int i915_gem_object_unpin (TYPE_2__*) ;
 int intel_ring_idle (struct intel_ring_buffer*) ;
 int iounmap (int ) ;
 int stub1 (struct intel_ring_buffer*) ;

void intel_cleanup_ring_buffer(struct intel_ring_buffer *ring)
{
 struct drm_i915_private *dev_priv;
 int ret;

 if (ring->obj == ((void*)0))
  return;


 dev_priv = ring->dev->dev_private;
 ret = intel_ring_idle(ring);
 if (ret)
  DRM_ERROR("failed to quiesce %s whilst cleaning up: %d\n",
     ring->name, ret);

 I915_WRITE_CTL(ring, 0);

 iounmap(ring->virtual_start);

 i915_gem_object_unpin(ring->obj);
 drm_gem_object_unreference(&ring->obj->base);
 ring->obj = ((void*)0);

 if (ring->cleanup)
  ring->cleanup(ring);

 cleanup_status_page(ring);
}
