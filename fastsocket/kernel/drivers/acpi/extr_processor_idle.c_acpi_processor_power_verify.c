
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_processor_cx {int type; int valid; } ;
struct TYPE_2__ {struct acpi_processor_cx* states; int timer_broadcast_on_state; } ;
struct acpi_processor {int id; TYPE_1__ power; } ;


 unsigned int ACPI_PROCESSOR_MAX_POWER ;



 int INT_MAX ;
 int acpi_processor_power_verify_c2 (struct acpi_processor_cx*) ;
 int acpi_processor_power_verify_c3 (struct acpi_processor*,struct acpi_processor_cx*) ;
 int lapic_timer_check_state (unsigned int,struct acpi_processor*,struct acpi_processor_cx*) ;
 int lapic_timer_propagate_broadcast ;
 unsigned int max_cstate ;
 int smp_call_function_single (int ,int ,struct acpi_processor*,int) ;
 int tsc_check_state (int) ;

__attribute__((used)) static int acpi_processor_power_verify(struct acpi_processor *pr)
{
 unsigned int i;
 unsigned int working = 0;

 pr->power.timer_broadcast_on_state = INT_MAX;

 for (i = 1; i < ACPI_PROCESSOR_MAX_POWER && i <= max_cstate; i++) {
  struct acpi_processor_cx *cx = &pr->power.states[i];

  switch (cx->type) {
  case 130:
   cx->valid = 1;
   break;

  case 129:
   acpi_processor_power_verify_c2(cx);
   break;

  case 128:
   acpi_processor_power_verify_c3(pr, cx);
   break;
  }
  if (!cx->valid)
   continue;

  lapic_timer_check_state(i, pr, cx);
  tsc_check_state(cx->type);
  working++;
 }

 smp_call_function_single(pr->id, lapic_timer_propagate_broadcast,
     pr, 1);

 return (working);
}
