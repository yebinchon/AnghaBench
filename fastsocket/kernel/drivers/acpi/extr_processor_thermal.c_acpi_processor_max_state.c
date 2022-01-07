
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int state_count; } ;
struct TYPE_3__ {scalar_t__ throttling; } ;
struct acpi_processor {TYPE_2__ throttling; TYPE_1__ flags; int id; } ;


 scalar_t__ cpufreq_get_max_state (int ) ;

__attribute__((used)) static int acpi_processor_max_state(struct acpi_processor *pr)
{
 int max_state = 0;





 max_state += cpufreq_get_max_state(pr->id);
 if (pr->flags.throttling)
  max_state += (pr->throttling.state_count -1);

 return max_state;
}
