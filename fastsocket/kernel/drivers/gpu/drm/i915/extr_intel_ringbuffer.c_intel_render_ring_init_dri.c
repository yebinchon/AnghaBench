
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct intel_ring_buffer {char* name; size_t id; int size; int effective_size; int * virtual_start; struct drm_device* dev; int request_list; int active_list; int cleanup; int init; int dispatch_execbuffer; int write_tail; int irq_enable_mask; int irq_put; int irq_get; int set_seqno; int get_seqno; int flush; int add_request; int mmio_base; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_3__ {struct intel_ring_buffer* ring; } ;
typedef TYPE_1__ drm_i915_private_t ;
struct TYPE_4__ {int gen; } ;


 int DRM_ERROR (char*) ;
 int ENODEV ;
 int ENOMEM ;
 int I915_NEED_GFX_HWS (struct drm_device*) ;
 int I915_USER_INTERRUPT ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_2__* INTEL_INFO (struct drm_device*) ;
 scalar_t__ IS_845G (struct drm_device*) ;
 scalar_t__ IS_GEN2 (struct drm_device*) ;
 scalar_t__ IS_I830 (struct drm_device*) ;
 size_t RCS ;
 int RENDER_RING_BASE ;
 int gen2_render_ring_flush ;
 int gen4_render_ring_flush ;
 int i830_dispatch_execbuffer ;
 int i8xx_ring_get_irq ;
 int i8xx_ring_put_irq ;
 int i915_dispatch_execbuffer ;
 int i965_dispatch_execbuffer ;
 int i9xx_add_request ;
 int i9xx_ring_get_irq ;
 int i9xx_ring_put_irq ;
 int init_phys_hws_pga (struct intel_ring_buffer*) ;
 int init_render_ring ;
 int * ioremap_wc (int ,int) ;
 int render_ring_cleanup ;
 int ring_get_seqno ;
 int ring_set_seqno ;
 int ring_write_tail ;

int intel_render_ring_init_dri(struct drm_device *dev, u64 start, u32 size)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_ring_buffer *ring = &dev_priv->ring[RCS];
 int ret;

 ring->name = "render ring";
 ring->id = RCS;
 ring->mmio_base = RENDER_RING_BASE;

 if (INTEL_INFO(dev)->gen >= 6) {

  return -ENODEV;
 }




 ring->add_request = i9xx_add_request;
 if (INTEL_INFO(dev)->gen < 4)
  ring->flush = gen2_render_ring_flush;
 else
  ring->flush = gen4_render_ring_flush;
 ring->get_seqno = ring_get_seqno;
 ring->set_seqno = ring_set_seqno;
 if (IS_GEN2(dev)) {
  ring->irq_get = i8xx_ring_get_irq;
  ring->irq_put = i8xx_ring_put_irq;
 } else {
  ring->irq_get = i9xx_ring_get_irq;
  ring->irq_put = i9xx_ring_put_irq;
 }
 ring->irq_enable_mask = I915_USER_INTERRUPT;
 ring->write_tail = ring_write_tail;
 if (INTEL_INFO(dev)->gen >= 4)
  ring->dispatch_execbuffer = i965_dispatch_execbuffer;
 else if (IS_I830(dev) || IS_845G(dev))
  ring->dispatch_execbuffer = i830_dispatch_execbuffer;
 else
  ring->dispatch_execbuffer = i915_dispatch_execbuffer;
 ring->init = init_render_ring;
 ring->cleanup = render_ring_cleanup;

 ring->dev = dev;
 INIT_LIST_HEAD(&ring->active_list);
 INIT_LIST_HEAD(&ring->request_list);

 ring->size = size;
 ring->effective_size = ring->size;
 if (IS_I830(ring->dev) || IS_845G(ring->dev))
  ring->effective_size -= 128;

 ring->virtual_start = ioremap_wc(start, size);
 if (ring->virtual_start == ((void*)0)) {
  DRM_ERROR("can not ioremap virtual address for"
     " ring buffer\n");
  return -ENOMEM;
 }

 if (!I915_NEED_GFX_HWS(dev)) {
  ret = init_phys_hws_pga(ring);
  if (ret)
   return ret;
 }

 return 0;
}
