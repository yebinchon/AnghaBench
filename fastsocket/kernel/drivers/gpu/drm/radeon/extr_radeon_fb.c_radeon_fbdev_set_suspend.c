
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* rfbdev; } ;
struct radeon_device {TYPE_3__ mode_info; } ;
struct TYPE_4__ {int fbdev; } ;
struct TYPE_5__ {TYPE_1__ helper; } ;


 int fb_set_suspend (int ,int) ;

void radeon_fbdev_set_suspend(struct radeon_device *rdev, int state)
{
 fb_set_suspend(rdev->mode_info.rfbdev->helper.fbdev, state);
}
