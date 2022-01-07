
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int tx; } ;
struct TYPE_5__ {int tx; } ;
struct acpi_processor_limit {TYPE_3__ user; TYPE_2__ thermal; } ;
struct TYPE_4__ {int state_count; int state; } ;
struct acpi_processor {int throttling_platform_limit; struct acpi_processor_limit limit; TYPE_1__ throttling; } ;


 int EINVAL ;
 int acpi_processor_get_platform_limit (struct acpi_processor*) ;
 int acpi_processor_set_throttling (struct acpi_processor*,int,int) ;
 scalar_t__ ignore_tpc ;

int acpi_processor_tstate_has_changed(struct acpi_processor *pr)
{
 int result = 0;
 int throttling_limit;
 int current_state;
 struct acpi_processor_limit *limit;
 int target_state;

 if (ignore_tpc)
  return 0;

 result = acpi_processor_get_platform_limit(pr);
 if (result) {

  return result;
 }

 throttling_limit = pr->throttling_platform_limit;
 if (throttling_limit >= pr->throttling.state_count) {

  return -EINVAL;
 }

 current_state = pr->throttling.state;
 if (current_state > throttling_limit) {







  limit = &pr->limit;
  target_state = throttling_limit;
  if (limit->thermal.tx > target_state)
   target_state = limit->thermal.tx;
  if (limit->user.tx > target_state)
   target_state = limit->user.tx;
 } else if (current_state == throttling_limit) {



  return 0;
 } else {







  target_state = throttling_limit;
 }
 return acpi_processor_set_throttling(pr, target_state, 0);
}
