
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct acpi_processor_tx_tss {int control; } ;
struct TYPE_2__ {int state_count; int * states_tss; } ;
struct acpi_processor {TYPE_1__ throttling; } ;
typedef int acpi_integer ;



__attribute__((used)) static int acpi_get_throttling_value(struct acpi_processor *pr,
   int state, acpi_integer *value)
{
 int ret = -1;

 if (state >= 0 && state <= pr->throttling.state_count) {
  struct acpi_processor_tx_tss *tx =
      (struct acpi_processor_tx_tss *)&(pr->throttling.
            states_tss[state]);
  *value = tx->control;
  ret = 0;
 }
 return ret;
}
