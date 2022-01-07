
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor_cx {int valid; int latency; int latency_ticks; int address; } ;



__attribute__((used)) static void acpi_processor_power_verify_c2(struct acpi_processor_cx *cx)
{

 if (!cx->address)
  return;





 cx->valid = 1;

 cx->latency_ticks = cx->latency;

 return;
}
