
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AT91_AIC_IECR ;
 int at91_sys_write (int ,int) ;

__attribute__((used)) static void at91_aic_unmask_irq(unsigned int irq)
{

 at91_sys_write(AT91_AIC_IECR, 1 << irq);
}
