
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vblank_sync; scalar_t__ active_crtcs; } ;
struct TYPE_3__ {int vblank_queue; } ;
struct radeon_device {TYPE_2__ pm; TYPE_1__ irq; } ;


 int RADEON_WAIT_VBLANK_TIMEOUT ;
 int msecs_to_jiffies (int ) ;
 int wait_event_timeout (int ,int,int ) ;

__attribute__((used)) static void radeon_sync_with_vblank(struct radeon_device *rdev)
{
 if (rdev->pm.active_crtcs) {
  rdev->pm.vblank_sync = 0;
  wait_event_timeout(
   rdev->irq.vblank_queue, rdev->pm.vblank_sync,
   msecs_to_jiffies(RADEON_WAIT_VBLANK_TIMEOUT));
 }
}
