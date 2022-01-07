
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int * pdc; } ;


 int init_intel_pdc (struct acpi_processor*) ;

void arch_acpi_processor_init_pdc(struct acpi_processor *pr)
{
 pr->pdc = ((void*)0);
 init_intel_pdc(pr);
 return;
}
