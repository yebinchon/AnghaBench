
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int timer_tick () ;

__attribute__((used)) static irqreturn_t
s3c2410_timer_interrupt(int irq, void *dev_id)
{
 timer_tick();
 return IRQ_HANDLED;
}
