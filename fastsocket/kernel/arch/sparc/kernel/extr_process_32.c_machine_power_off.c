
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 int AUXIO_POWER_OFF ;
 int * auxio_power_register ;
 int machine_halt () ;
 TYPE_1__* of_console_device ;
 scalar_t__ scons_pwroff ;
 scalar_t__ strcmp (int ,char*) ;

void machine_power_off(void)
{
 if (auxio_power_register &&
     (strcmp(of_console_device->type, "serial") || scons_pwroff))
  *auxio_power_register |= AUXIO_POWER_OFF;
 machine_halt();
}
