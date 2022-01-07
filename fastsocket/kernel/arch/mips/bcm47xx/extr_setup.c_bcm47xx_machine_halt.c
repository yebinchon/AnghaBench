
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cpu_relax () ;
 int local_irq_disable () ;
 int ssb_bcm47xx ;
 int ssb_watchdog_timer_set (int *,int ) ;

__attribute__((used)) static void bcm47xx_machine_halt(void)
{

 local_irq_disable();
 ssb_watchdog_timer_set(&ssb_bcm47xx, 0);
 while (1)
  cpu_relax();
}
