
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_opsput_pld_irq (unsigned int) ;

__attribute__((used)) static unsigned int startup_opsput_pld_irq(unsigned int irq)
{
 enable_opsput_pld_irq(irq);
 return (0);
}
