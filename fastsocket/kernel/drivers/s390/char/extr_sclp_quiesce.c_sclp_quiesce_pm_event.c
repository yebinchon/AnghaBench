
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sclp_register {int dummy; } ;
typedef enum sclp_pm_event { ____Placeholder_sclp_pm_event } sclp_pm_event ;





 int * _machine_halt ;
 int * _machine_power_off ;
 int * _machine_restart ;
 int * old_machine_halt ;
 int * old_machine_power_off ;
 int * old_machine_restart ;

__attribute__((used)) static void sclp_quiesce_pm_event(struct sclp_register *reg,
      enum sclp_pm_event sclp_pm_event)
{
 switch (sclp_pm_event) {
 case 129:
  if (old_machine_restart) {
   _machine_restart = old_machine_restart;
   _machine_halt = old_machine_halt;
   _machine_power_off = old_machine_power_off;
   old_machine_restart = ((void*)0);
   old_machine_halt = ((void*)0);
   old_machine_power_off = ((void*)0);
  }
  break;
 case 130:
 case 128:
  break;
 }
}
