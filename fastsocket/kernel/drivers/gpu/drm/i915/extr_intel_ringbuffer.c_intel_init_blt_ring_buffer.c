
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct intel_ring_buffer {char* name; size_t id; int init; int * signal_mbox; int * semaphore_register; int sync_to; int dispatch_execbuffer; int irq_put; int irq_get; int irq_enable_mask; int set_seqno; int get_seqno; int add_request; int flush; int write_tail; int mmio_base; } ;
struct drm_device {TYPE_1__* dev_private; } ;
struct TYPE_2__ {struct intel_ring_buffer* ring; } ;
typedef TYPE_1__ drm_i915_private_t ;


 size_t BCS ;
 int BLT_RING_BASE ;
 int GEN6_BLITTER_USER_INTERRUPT ;
 int GEN6_RBSYNC ;
 int GEN6_VBSYNC ;
 int MI_SEMAPHORE_SYNC_BR ;
 int MI_SEMAPHORE_SYNC_BV ;
 int MI_SEMAPHORE_SYNC_INVALID ;
 int blt_ring_flush ;
 int gen6_add_request ;
 int gen6_ring_dispatch_execbuffer ;
 int gen6_ring_get_irq ;
 int gen6_ring_get_seqno ;
 int gen6_ring_put_irq ;
 int gen6_ring_sync ;
 int init_ring_common ;
 int intel_init_ring_buffer (struct drm_device*,struct intel_ring_buffer*) ;
 int ring_set_seqno ;
 int ring_write_tail ;

int intel_init_blt_ring_buffer(struct drm_device *dev)
{
 drm_i915_private_t *dev_priv = dev->dev_private;
 struct intel_ring_buffer *ring = &dev_priv->ring[BCS];

 ring->name = "blitter ring";
 ring->id = BCS;

 ring->mmio_base = BLT_RING_BASE;
 ring->write_tail = ring_write_tail;
 ring->flush = blt_ring_flush;
 ring->add_request = gen6_add_request;
 ring->get_seqno = gen6_ring_get_seqno;
 ring->set_seqno = ring_set_seqno;
 ring->irq_enable_mask = GEN6_BLITTER_USER_INTERRUPT;
 ring->irq_get = gen6_ring_get_irq;
 ring->irq_put = gen6_ring_put_irq;
 ring->dispatch_execbuffer = gen6_ring_dispatch_execbuffer;
 ring->sync_to = gen6_ring_sync;
 ring->semaphore_register[0] = MI_SEMAPHORE_SYNC_BR;
 ring->semaphore_register[1] = MI_SEMAPHORE_SYNC_BV;
 ring->semaphore_register[2] = MI_SEMAPHORE_SYNC_INVALID;
 ring->signal_mbox[0] = GEN6_RBSYNC;
 ring->signal_mbox[1] = GEN6_VBSYNC;
 ring->init = init_ring_common;

 return intel_init_ring_buffer(dev, ring);
}
