
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crime_disable_irq (unsigned int) ;

__attribute__((used)) static void crime_level_mask_and_ack_irq(unsigned int irq)
{
 crime_disable_irq(irq);
}
