
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _machine_halt ;
 int _machine_restart ;
 int ip27_machine_halt ;
 int ip27_machine_power_off ;
 int ip27_machine_restart ;
 int pm_power_off ;

void ip27_reboot_setup(void)
{
 _machine_restart = ip27_machine_restart;
 _machine_halt = ip27_machine_halt;
 pm_power_off = ip27_machine_power_off;
}
