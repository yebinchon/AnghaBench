
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int radeon_irq_kms_pflip_irq_put (struct radeon_device*,int) ;

void evergreen_post_page_flip(struct radeon_device *rdev, int crtc)
{

 radeon_irq_kms_pflip_irq_put(rdev, crtc);
}
