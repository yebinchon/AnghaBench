
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct acpi_processor_throttling {scalar_t__ state; int state_count; int shared_type; int shared_cpu_map; scalar_t__ tsd_valid_flag; int * acpi_processor_set_throttling; int * acpi_processor_get_throttling; int duty_width; int duty_offset; int address; } ;
struct TYPE_5__ {int throttling; } ;
struct acpi_processor {TYPE_2__ flags; struct acpi_processor_throttling throttling; int id; } ;
struct TYPE_4__ {scalar_t__ throttle; } ;
struct TYPE_6__ {TYPE_1__ piix4; } ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 int DOMAIN_COORD_TYPE_SW_ALL ;
 int EINVAL ;
 scalar_t__ acpi_processor_get_fadt_info (struct acpi_processor*) ;
 scalar_t__ acpi_processor_get_platform_limit (struct acpi_processor*) ;
 int acpi_processor_get_throttling (struct acpi_processor*) ;
 scalar_t__ acpi_processor_get_throttling_control (struct acpi_processor*) ;
 int acpi_processor_get_throttling_fadt ;
 int acpi_processor_get_throttling_ptc ;
 scalar_t__ acpi_processor_get_throttling_states (struct acpi_processor*) ;
 scalar_t__ acpi_processor_get_tsd (struct acpi_processor*) ;
 int acpi_processor_set_throttling (struct acpi_processor*,int ,int) ;
 int acpi_processor_set_throttling_fadt ;
 int acpi_processor_set_throttling_ptc ;
 int cpumask_set_cpu (int ,int ) ;
 TYPE_3__ errata ;

int acpi_processor_get_throttling_info(struct acpi_processor *pr)
{
 int result = 0;
 struct acpi_processor_throttling *pthrottling;

 if (!pr)
  return -EINVAL;

 ACPI_DEBUG_PRINT((ACPI_DB_INFO,
     "pblk_address[0x%08x] duty_offset[%d] duty_width[%d]\n",
     pr->throttling.address,
     pr->throttling.duty_offset,
     pr->throttling.duty_width));





 if (acpi_processor_get_throttling_control(pr) ||
  acpi_processor_get_throttling_states(pr) ||
  acpi_processor_get_platform_limit(pr))
 {
  pr->throttling.acpi_processor_get_throttling =
      &acpi_processor_get_throttling_fadt;
  pr->throttling.acpi_processor_set_throttling =
      &acpi_processor_set_throttling_fadt;
  if (acpi_processor_get_fadt_info(pr))
   return 0;
 } else {
  pr->throttling.acpi_processor_get_throttling =
      &acpi_processor_get_throttling_ptc;
  pr->throttling.acpi_processor_set_throttling =
      &acpi_processor_set_throttling_ptc;
 }





 if (acpi_processor_get_tsd(pr)) {
  pthrottling = &pr->throttling;
  pthrottling->tsd_valid_flag = 0;
  cpumask_set_cpu(pr->id, pthrottling->shared_cpu_map);
  pthrottling->shared_type = DOMAIN_COORD_TYPE_SW_ALL;
 }






 if (errata.piix4.throttle) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Throttling not supported on PIIX4 A- or B-step\n"));
  return 0;
 }

 ACPI_DEBUG_PRINT((ACPI_DB_INFO, "Found %d throttling states\n",
     pr->throttling.state_count));

 pr->flags.throttling = 1;







 result = acpi_processor_get_throttling(pr);
 if (result)
  goto end;

 if (pr->throttling.state) {
  ACPI_DEBUG_PRINT((ACPI_DB_INFO,
      "Disabling throttling (was T%d)\n",
      pr->throttling.state));
  result = acpi_processor_set_throttling(pr, 0, 0);
  if (result)
   goto end;
 }

      end:
 if (result)
  pr->flags.throttling = 0;

 return result;
}
