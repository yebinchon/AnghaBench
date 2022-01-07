
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TB_SHUTDOWN_HALT ;
 int machine_shutdown () ;
 int pm_power_off () ;
 int reboot_force ;
 int tboot_shutdown (int ) ;

__attribute__((used)) static void native_machine_power_off(void)
{
 if (pm_power_off) {
  if (!reboot_force)
   machine_shutdown();
  pm_power_off();
 }

 tboot_shutdown(TB_SHUTDOWN_HALT);
}
