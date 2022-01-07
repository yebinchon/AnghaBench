
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int r600_irq_disable (struct radeon_device*) ;
 int r600_rlc_stop (struct radeon_device*) ;

void r600_irq_suspend(struct radeon_device *rdev)
{
 r600_irq_disable(rdev);
 r600_rlc_stop(rdev);
}
