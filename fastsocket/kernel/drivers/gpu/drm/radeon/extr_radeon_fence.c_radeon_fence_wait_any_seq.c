
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct radeon_device {int ring_lock; TYPE_2__* ring; TYPE_1__* fence_drv; int dev; int ddev; int fence_queue; } ;
struct TYPE_4__ {int ready; } ;
struct TYPE_3__ {unsigned long last_activity; } ;


 int EDEADLK ;
 int ENOENT ;
 unsigned long RADEON_FENCE_JIFFIES_TIMEOUT ;
 unsigned int RADEON_NUM_RINGS ;
 int dev_warn (int ,char*,scalar_t__) ;
 unsigned long jiffies ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_fence_any_seq_signaled (struct radeon_device*,scalar_t__*) ;
 int radeon_irq_kms_sw_irq_get (struct radeon_device*,unsigned int) ;
 int radeon_irq_kms_sw_irq_put (struct radeon_device*,unsigned int) ;
 scalar_t__ radeon_ring_is_lockup (struct radeon_device*,unsigned int,TYPE_2__*) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int trace_radeon_fence_wait_begin (int ,scalar_t__) ;
 int trace_radeon_fence_wait_end (int ,scalar_t__) ;
 scalar_t__ unlikely (int) ;
 int wait_event_interruptible_timeout (int ,int,unsigned long) ;
 int wait_event_timeout (int ,int,unsigned long) ;

__attribute__((used)) static int radeon_fence_wait_any_seq(struct radeon_device *rdev,
         u64 *target_seq, bool intr)
{
 unsigned long timeout, last_activity, tmp;
 unsigned i, ring = RADEON_NUM_RINGS;
 bool signaled;
 int r;

 for (i = 0, last_activity = 0; i < RADEON_NUM_RINGS; ++i) {
  if (!target_seq[i]) {
   continue;
  }


  if (time_after(rdev->fence_drv[i].last_activity, last_activity)) {
   last_activity = rdev->fence_drv[i].last_activity;
  }




  if (i < ring) {
   ring = i;
  }
 }


 if (ring == RADEON_NUM_RINGS) {
  return -ENOENT;
 }

 while (!radeon_fence_any_seq_signaled(rdev, target_seq)) {
  timeout = jiffies - RADEON_FENCE_JIFFIES_TIMEOUT;
  if (time_after(last_activity, timeout)) {

   timeout = last_activity - timeout;
  } else {



   timeout = 1;
  }

  trace_radeon_fence_wait_begin(rdev->ddev, target_seq[ring]);
  for (i = 0; i < RADEON_NUM_RINGS; ++i) {
   if (target_seq[i]) {
    radeon_irq_kms_sw_irq_get(rdev, i);
   }
  }
  if (intr) {
   r = wait_event_interruptible_timeout(rdev->fence_queue,
    (signaled = radeon_fence_any_seq_signaled(rdev, target_seq)),
    timeout);
  } else {
   r = wait_event_timeout(rdev->fence_queue,
    (signaled = radeon_fence_any_seq_signaled(rdev, target_seq)),
    timeout);
  }
  for (i = 0; i < RADEON_NUM_RINGS; ++i) {
   if (target_seq[i]) {
    radeon_irq_kms_sw_irq_put(rdev, i);
   }
  }
  if (unlikely(r < 0)) {
   return r;
  }
  trace_radeon_fence_wait_end(rdev->ddev, target_seq[ring]);

  if (unlikely(!signaled)) {


   if (r) {
    continue;
   }

   mutex_lock(&rdev->ring_lock);
   for (i = 0, tmp = 0; i < RADEON_NUM_RINGS; ++i) {
    if (time_after(rdev->fence_drv[i].last_activity, tmp)) {
     tmp = rdev->fence_drv[i].last_activity;
    }
   }

   if (last_activity != tmp) {
    last_activity = tmp;
    mutex_unlock(&rdev->ring_lock);
    continue;
   }

   if (radeon_ring_is_lockup(rdev, ring, &rdev->ring[ring])) {

    dev_warn(rdev->dev, "GPU lockup (waiting for 0x%016llx)\n",
      target_seq[ring]);


    for (i = 0; i < RADEON_NUM_RINGS; ++i) {
     rdev->fence_drv[i].last_activity = jiffies;
    }


    rdev->ring[ring].ready = 0;
    mutex_unlock(&rdev->ring_lock);
    return -EDEADLK;
   }
   mutex_unlock(&rdev->ring_lock);
  }
 }
 return 0;
}
