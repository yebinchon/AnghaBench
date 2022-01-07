
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ u64 ;
struct radeon_device {int ring_lock; TYPE_2__* ring; TYPE_1__* fence_drv; int dev; int ddev; int fence_queue; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_3__ {unsigned long last_activity; int last_seq; } ;


 int EBUSY ;
 int EDEADLK ;
 unsigned long RADEON_FENCE_JIFFIES_TIMEOUT ;
 unsigned int RADEON_NUM_RINGS ;
 scalar_t__ atomic64_read (int *) ;
 int dev_warn (int ,char*,scalar_t__,scalar_t__) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_fence_seq_signaled (struct radeon_device*,scalar_t__,unsigned int) ;
 int radeon_irq_kms_sw_irq_get (struct radeon_device*,unsigned int) ;
 int radeon_irq_kms_sw_irq_put (struct radeon_device*,unsigned int) ;
 scalar_t__ radeon_ring_is_lockup (struct radeon_device*,unsigned int,TYPE_2__*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int trace_radeon_fence_wait_begin (int ,scalar_t__) ;
 int trace_radeon_fence_wait_end (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int radeon_fence_wait_seq(struct radeon_device *rdev, u64 target_seq,
     unsigned ring, bool intr, bool lock_ring)
{
 unsigned long timeout, last_activity;
 uint64_t seq;
 unsigned i;
 bool signaled;
 int r;

 while (target_seq > atomic64_read(&rdev->fence_drv[ring].last_seq)) {
  if (!rdev->ring[ring].ready) {
   return -EBUSY;
  }

  timeout = jiffies - RADEON_FENCE_JIFFIES_TIMEOUT;
  if (time_after(rdev->fence_drv[ring].last_activity, timeout)) {

   timeout = rdev->fence_drv[ring].last_activity - timeout;
  } else {



   timeout = 1;
  }
  seq = atomic64_read(&rdev->fence_drv[ring].last_seq);

  last_activity = rdev->fence_drv[ring].last_activity;

  trace_radeon_fence_wait_begin(rdev->ddev, seq);
  radeon_irq_kms_sw_irq_get(rdev, ring);
  if (intr) {
   r = wait_event_interruptible_timeout(rdev->fence_queue,
    (signaled = radeon_fence_seq_signaled(rdev, target_seq, ring)),
    timeout);
                } else {
   r = wait_event_timeout(rdev->fence_queue,
    (signaled = radeon_fence_seq_signaled(rdev, target_seq, ring)),
    timeout);
  }
  radeon_irq_kms_sw_irq_put(rdev, ring);
  if (unlikely(r < 0)) {
   return r;
  }
  trace_radeon_fence_wait_end(rdev->ddev, seq);

  if (unlikely(!signaled)) {


   if (r) {
    continue;
   }


   if (seq != atomic64_read(&rdev->fence_drv[ring].last_seq)) {
    continue;
   }

   if (lock_ring) {
    mutex_lock(&rdev->ring_lock);
   }


   if (last_activity != rdev->fence_drv[ring].last_activity) {
    if (lock_ring) {
     mutex_unlock(&rdev->ring_lock);
    }
    continue;
   }

   if (radeon_ring_is_lockup(rdev, ring, &rdev->ring[ring])) {

    dev_warn(rdev->dev, "GPU lockup (waiting for 0x%016llx last fence id 0x%016llx)\n",
      target_seq, seq);


    for (i = 0; i < RADEON_NUM_RINGS; ++i) {
     rdev->fence_drv[i].last_activity = jiffies;
    }


    rdev->ring[ring].ready = 0;
    if (lock_ring) {
     mutex_unlock(&rdev->ring_lock);
    }
    return -EDEADLK;
   }

   if (lock_ring) {
    mutex_unlock(&rdev->ring_lock);
   }
  }
 }
 return 0;
}
