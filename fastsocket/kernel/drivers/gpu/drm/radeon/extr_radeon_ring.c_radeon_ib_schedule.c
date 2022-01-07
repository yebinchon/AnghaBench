
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radeon_ring {int ready; } ;
struct radeon_ib {size_t ring; void* fence; TYPE_1__* vm; int semaphore; struct radeon_fence** sync_to; int length_dw; } ;
struct radeon_fence {int ring; } ;
struct radeon_device {int dev; struct radeon_ring* ring; } ;
struct TYPE_2__ {void* last_flush; } ;


 int EINVAL ;
 int RADEON_NUM_RINGS ;
 int dev_err (int ,char*,...) ;
 int radeon_fence_emit (struct radeon_device*,void**,size_t) ;
 scalar_t__ radeon_fence_need_sync (struct radeon_fence*,size_t) ;
 int radeon_fence_note_sync (struct radeon_fence*,size_t) ;
 void* radeon_fence_ref (void*) ;
 int radeon_ring_ib_execute (struct radeon_device*,size_t,struct radeon_ib*) ;
 int radeon_ring_lock (struct radeon_device*,struct radeon_ring*,int) ;
 int radeon_ring_unlock_commit (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_unlock_undo (struct radeon_device*,struct radeon_ring*) ;
 int radeon_ring_vm_flush (struct radeon_device*,size_t,TYPE_1__*) ;
 int radeon_semaphore_free (struct radeon_device*,int *,int *) ;
 int radeon_semaphore_sync_rings (struct radeon_device*,int ,int ,size_t) ;

int radeon_ib_schedule(struct radeon_device *rdev, struct radeon_ib *ib,
         struct radeon_ib *const_ib)
{
 struct radeon_ring *ring = &rdev->ring[ib->ring];
 bool need_sync = 0;
 int i, r = 0;

 if (!ib->length_dw || !ring->ready) {

  dev_err(rdev->dev, "couldn't schedule ib\n");
  return -EINVAL;
 }


 r = radeon_ring_lock(rdev, ring, 64 + RADEON_NUM_RINGS * 8);
 if (r) {
  dev_err(rdev->dev, "scheduling IB failed (%d).\n", r);
  return r;
 }
 for (i = 0; i < RADEON_NUM_RINGS; ++i) {
  struct radeon_fence *fence = ib->sync_to[i];
  if (radeon_fence_need_sync(fence, ib->ring)) {
   need_sync = 1;
   radeon_semaphore_sync_rings(rdev, ib->semaphore,
          fence->ring, ib->ring);
   radeon_fence_note_sync(fence, ib->ring);
  }
 }

 if (!need_sync) {
  radeon_semaphore_free(rdev, &ib->semaphore, ((void*)0));
 }


 if (ib->vm ) {
  radeon_ring_vm_flush(rdev, ib->ring, ib->vm);
 }
 if (const_ib) {
  radeon_ring_ib_execute(rdev, const_ib->ring, const_ib);
  radeon_semaphore_free(rdev, &const_ib->semaphore, ((void*)0));
 }
 radeon_ring_ib_execute(rdev, ib->ring, ib);
 r = radeon_fence_emit(rdev, &ib->fence, ib->ring);
 if (r) {
  dev_err(rdev->dev, "failed to emit fence for new IB (%d)\n", r);
  radeon_ring_unlock_undo(rdev, ring);
  return r;
 }
 if (const_ib) {
  const_ib->fence = radeon_fence_ref(ib->fence);
 }

 if (ib->vm && !ib->vm->last_flush) {
  ib->vm->last_flush = radeon_fence_ref(ib->fence);
 }
 radeon_ring_unlock_commit(rdev, ring);
 return 0;
}
