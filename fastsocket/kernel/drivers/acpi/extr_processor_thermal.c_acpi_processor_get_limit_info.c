
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int limit; scalar_t__ throttling; } ;
struct acpi_processor {TYPE_1__ flags; } ;


 int EINVAL ;

int acpi_processor_get_limit_info(struct acpi_processor *pr)
{

 if (!pr)
  return -EINVAL;

 if (pr->flags.throttling)
  pr->flags.limit = 1;

 return 0;
}
