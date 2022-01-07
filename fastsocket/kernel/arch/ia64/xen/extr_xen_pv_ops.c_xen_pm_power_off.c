
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HYPERVISOR_shutdown (int ) ;
 int SHUTDOWN_poweroff ;
 int local_irq_disable () ;

__attribute__((used)) static void xen_pm_power_off(void)
{
 local_irq_disable();
 HYPERVISOR_shutdown(SHUTDOWN_poweroff);
}
