
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_oaks32r_irq (unsigned int) ;

__attribute__((used)) static void end_oaks32r_irq(unsigned int irq)
{
 enable_oaks32r_irq(irq);
}
