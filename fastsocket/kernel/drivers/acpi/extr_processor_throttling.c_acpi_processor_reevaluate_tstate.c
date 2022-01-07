
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int throttling; } ;
struct TYPE_3__ {scalar_t__ state; int state_count; } ;
struct acpi_processor {TYPE_2__ flags; TYPE_1__ throttling; } ;


 unsigned long CPU_DEAD ;
 int acpi_processor_get_throttling (struct acpi_processor*) ;
 int acpi_processor_set_throttling (struct acpi_processor*,int ,int) ;

void acpi_processor_reevaluate_tstate(struct acpi_processor *pr,
     unsigned long action)
{
 int result = 0;

 if (action == CPU_DEAD) {



  pr->flags.throttling = 0;
  return;
 }



 if (!pr->throttling.state_count) {



  pr->flags.throttling = 0;
  return;
 }
 pr->flags.throttling = 1;






 result = acpi_processor_get_throttling(pr);
 if (result)
  goto end;

 if (pr->throttling.state) {
  result = acpi_processor_set_throttling(pr, 0, 0);
  if (result)
   goto end;
 }

end:
 if (result)
  pr->flags.throttling = 0;
}
