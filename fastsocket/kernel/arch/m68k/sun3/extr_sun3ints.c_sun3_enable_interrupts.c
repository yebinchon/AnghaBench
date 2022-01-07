
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sun3_enable_irq (int ) ;

void sun3_enable_interrupts(void)
{
 sun3_enable_irq(0);
}
