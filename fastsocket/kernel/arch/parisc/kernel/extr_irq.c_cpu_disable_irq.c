
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long EIEM_MASK (unsigned int) ;
 unsigned long cpu_eiem ;

__attribute__((used)) static void cpu_disable_irq(unsigned int irq)
{
 unsigned long eirr_bit = EIEM_MASK(irq);

 cpu_eiem &= ~eirr_bit;




}
