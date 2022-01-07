
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rfbdev; } ;
struct radeon_device {TYPE_2__ mode_info; } ;
struct TYPE_3__ {int helper; } ;


 int drm_fb_helper_hotplug_event (int *) ;

void radeon_fb_output_poll_changed(struct radeon_device *rdev)
{
 drm_fb_helper_hotplug_event(&rdev->mode_info.rfbdev->helper);
}
