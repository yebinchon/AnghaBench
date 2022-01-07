
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 TYPE_1__* of_console_device ;
 int prom_halt () ;
 int prom_halt_power_off () ;
 scalar_t__ scons_pwroff ;
 scalar_t__ strcmp (int ,char*) ;

void machine_power_off(void)
{
 if (strcmp(of_console_device->type, "serial") || scons_pwroff)
  prom_halt_power_off();

 prom_halt();
}
