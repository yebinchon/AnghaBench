
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radeon_device {int dummy; } ;


 int mdelay (int) ;
 int r600_disable_interrupt_state (struct radeon_device*) ;
 int r600_disable_interrupts (struct radeon_device*) ;
 int r600_irq_ack (struct radeon_device*) ;

void r600_irq_disable(struct radeon_device *rdev)
{
 r600_disable_interrupts(rdev);

 mdelay(1);
 r600_irq_ack(rdev);
 r600_disable_interrupt_state(rdev);
}
