
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GEDR0 ;
 unsigned int IRQ_GPIO0 ;

__attribute__((used)) static void pxa_ack_low_gpio(unsigned int irq)
{
 GEDR0 = (1 << (irq - IRQ_GPIO0));
}
