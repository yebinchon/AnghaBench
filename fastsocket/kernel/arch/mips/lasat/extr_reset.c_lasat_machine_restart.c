
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int* reset_reg; } ;


 scalar_t__ lasat_boot_to_service ;
 TYPE_1__* lasat_misc ;
 int local_irq_disable () ;

__attribute__((used)) static void lasat_machine_restart(char *command)
{
 local_irq_disable();

 if (lasat_boot_to_service) {
  *(volatile unsigned int *)0xa0000024 = 0xdeadbeef;
  *(volatile unsigned int *)0xa00000fc = 0xfedeabba;
 }
 *lasat_misc->reset_reg = 0xbedead;
 for (;;) ;
}
