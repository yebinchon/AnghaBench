
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct radeon_ring {int ready; } ;
struct TYPE_6__ {scalar_t__ requested_clock_mode_index; scalar_t__ current_clock_mode_index; scalar_t__ requested_power_state_index; scalar_t__ current_power_state_index; int active_crtcs; int req_vblank; int mclk_lock; int dynpm_planned_action; scalar_t__ active_crtc_count; } ;
struct TYPE_5__ {scalar_t__ installed; } ;
struct radeon_device {int num_crtc; TYPE_3__* ddev; TYPE_2__ pm; int ring_lock; TYPE_1__ irq; struct radeon_ring* ring; } ;
struct TYPE_7__ {int struct_mutex; } ;


 int DYNPM_ACTION_NONE ;
 int RADEON_NUM_RINGS ;
 int down_write (int *) ;
 int drm_vblank_get (TYPE_3__*,int) ;
 int drm_vblank_put (TYPE_3__*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int radeon_bandwidth_update (struct radeon_device*) ;
 int radeon_fence_wait_empty_locked (struct radeon_device*,int) ;
 int radeon_set_power_state (struct radeon_device*) ;
 int radeon_unmap_vram_bos (struct radeon_device*) ;
 int radeon_update_bandwidth_info (struct radeon_device*) ;
 int up_write (int *) ;

__attribute__((used)) static void radeon_pm_set_clocks(struct radeon_device *rdev)
{
 int i, r;


 if ((rdev->pm.requested_clock_mode_index == rdev->pm.current_clock_mode_index) &&
     (rdev->pm.requested_power_state_index == rdev->pm.current_power_state_index))
  return;

 mutex_lock(&rdev->ddev->struct_mutex);
 down_write(&rdev->pm.mclk_lock);
 mutex_lock(&rdev->ring_lock);


 for (i = 0; i < RADEON_NUM_RINGS; i++) {
  struct radeon_ring *ring = &rdev->ring[i];
  if (!ring->ready) {
   continue;
  }
  r = radeon_fence_wait_empty_locked(rdev, i);
  if (r) {

   mutex_unlock(&rdev->ring_lock);
   up_write(&rdev->pm.mclk_lock);
   mutex_unlock(&rdev->ddev->struct_mutex);
   return;
  }
 }

 radeon_unmap_vram_bos(rdev);

 if (rdev->irq.installed) {
  for (i = 0; i < rdev->num_crtc; i++) {
   if (rdev->pm.active_crtcs & (1 << i)) {
    rdev->pm.req_vblank |= (1 << i);
    drm_vblank_get(rdev->ddev, i);
   }
  }
 }

 radeon_set_power_state(rdev);

 if (rdev->irq.installed) {
  for (i = 0; i < rdev->num_crtc; i++) {
   if (rdev->pm.req_vblank & (1 << i)) {
    rdev->pm.req_vblank &= ~(1 << i);
    drm_vblank_put(rdev->ddev, i);
   }
  }
 }


 radeon_update_bandwidth_info(rdev);
 if (rdev->pm.active_crtc_count)
  radeon_bandwidth_update(rdev);

 rdev->pm.dynpm_planned_action = DYNPM_ACTION_NONE;

 mutex_unlock(&rdev->ring_lock);
 up_write(&rdev->pm.mclk_lock);
 mutex_unlock(&rdev->ddev->struct_mutex);
}
