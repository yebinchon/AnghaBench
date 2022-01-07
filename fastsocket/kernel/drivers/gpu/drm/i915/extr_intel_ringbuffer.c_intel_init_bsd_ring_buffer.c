
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {char* name; size_t id; int init; int dispatch_execbuffer; int irq_put; int irq_get; int irq_enable_mask; void* set_seqno; int get_seqno; int add_request; int flush; int mmio_base; int * signal_mbox; int * semaphore_register; int sync_to; int write_tail; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {struct intel_ring_buffer* ring; } ;
typedef TYPE_1__ drm_i915_private_t ;


 int BSD_RING_BASE ;
 int GEN6_BSD_RING_BASE ;
 int GEN6_BSD_USER_INTERRUPT ;
 int GEN6_BVSYNC ;
 int GEN6_RVSYNC ;
 int GT_BSD_USER_INTERRUPT ;
 int I915_BSD_USER_INTERRUPT ;
 scalar_t__ IS_GEN5 (struct drm_device*) ;
 scalar_t__ IS_GEN6 (struct drm_device*) ;
 scalar_t__ IS_GEN7 (struct drm_device*) ;
 int MI_SEMAPHORE_SYNC_INVALID ;
 int MI_SEMAPHORE_SYNC_VB ;
 int MI_SEMAPHORE_SYNC_VR ;
 size_t VCS ;
 int bsd_ring_flush ;
 int gen5_ring_get_irq ;
 int gen5_ring_put_irq ;
 int gen6_add_request ;
 int gen6_bsd_ring_write_tail ;
 int gen6_ring_dispatch_execbuffer ;
 int gen6_ring_flush ;
 int gen6_ring_get_irq ;
 int gen6_ring_get_seqno ;
 int gen6_ring_put_irq ;
 int gen6_ring_sync ;
 int i965_dispatch_execbuffer ;
 int i9xx_add_request ;
 int i9xx_ring_get_irq ;
 int i9xx_ring_put_irq ;
 int init_ring_common ;
 int intel_init_ring_buffer (struct drm_device*,struct intel_ring_buffer*) ;
 int ring_get_seqno ;
 void* ring_set_seqno ;
 int ring_write_tail ;

int intel_init_bsd_ring_buffer(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_ring_buffer *ring = &dev_priv->ring[VCS];

 ring->name = "bsd ring";
 ring->id = VCS;

 ring->write_tail = ring_write_tail;
 if (IS_GEN6(dev) || IS_GEN7(dev)) {
  ring->mmio_base = GEN6_BSD_RING_BASE;

  if (IS_GEN6(dev))
   ring->write_tail = gen6_bsd_ring_write_tail;
  ring->flush = gen6_ring_flush;
  ring->add_request = gen6_add_request;
  ring->get_seqno = gen6_ring_get_seqno;
  ring->set_seqno = ring_set_seqno;
  ring->irq_enable_mask = GEN6_BSD_USER_INTERRUPT;
  ring->irq_get = gen6_ring_get_irq;
  ring->irq_put = gen6_ring_put_irq;
  ring->dispatch_execbuffer = gen6_ring_dispatch_execbuffer;
  ring->sync_to = gen6_ring_sync;
  ring->semaphore_register[0] = MI_SEMAPHORE_SYNC_VR;
  ring->semaphore_register[1] = MI_SEMAPHORE_SYNC_INVALID;
  ring->semaphore_register[2] = MI_SEMAPHORE_SYNC_VB;
  ring->signal_mbox[0] = GEN6_RVSYNC;
  ring->signal_mbox[1] = GEN6_BVSYNC;
 } else {
  ring->mmio_base = BSD_RING_BASE;
  ring->flush = bsd_ring_flush;
  ring->add_request = i9xx_add_request;
  ring->get_seqno = ring_get_seqno;
  ring->set_seqno = ring_set_seqno;
  if (IS_GEN5(dev)) {
   ring->irq_enable_mask = GT_BSD_USER_INTERRUPT;
   ring->irq_get = gen5_ring_get_irq;
   ring->irq_put = gen5_ring_put_irq;
  } else {
   ring->irq_enable_mask = I915_BSD_USER_INTERRUPT;
   ring->irq_get = i9xx_ring_get_irq;
   ring->irq_put = i9xx_ring_put_irq;
  }
  ring->dispatch_execbuffer = i965_dispatch_execbuffer;
 }
 ring->init = init_ring_common;

 return intel_init_ring_buffer(dev, ring);
}
