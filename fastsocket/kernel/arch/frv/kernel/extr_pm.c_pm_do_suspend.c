
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_LEDS (int) ;
 int frv_cpu_suspend (int ) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int pdm_suspend_mode ;

int pm_do_suspend(void)
{
 local_irq_disable();

 __set_LEDS(0xb1);


 frv_cpu_suspend(pdm_suspend_mode);

 __set_LEDS(0xb2);

 local_irq_enable();

 return 0;
}
