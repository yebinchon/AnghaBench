
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int omap_mpu_timer2_overflows ;

__attribute__((used)) static irqreturn_t omap_mpu_timer2_interrupt(int irq, void *dev_id)
{
 omap_mpu_timer2_overflows++;
 return IRQ_HANDLED;
}
