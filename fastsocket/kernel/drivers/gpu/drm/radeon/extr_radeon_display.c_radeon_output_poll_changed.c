
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;
struct drm_device {struct radeon_device* dev_private; } ;


 int radeon_fb_output_poll_changed (struct radeon_device*) ;

__attribute__((used)) static void radeon_output_poll_changed(struct drm_device *dev)
{
 struct radeon_device *rdev = dev->dev_private;
 radeon_fb_output_poll_changed(rdev);
}
