
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int performance_platform_limit; int id; int handle; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 int EINVAL ;
 int ENODEV ;
 int PPC_IN_USE ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 int acpi_processor_ppc_status ;
 int cpufreq_printk (char*,int ,int,char*) ;

__attribute__((used)) static int acpi_processor_get_platform_limit(struct acpi_processor *pr)
{
 acpi_status status = 0;
 unsigned long long ppc = 0;


 if (!pr)
  return -EINVAL;





 status = acpi_evaluate_integer(pr->handle, "_PPC", ((void*)0), &ppc);

 if (status != AE_NOT_FOUND)
  acpi_processor_ppc_status |= PPC_IN_USE;

 if (ACPI_FAILURE(status) && status != AE_NOT_FOUND) {
  ACPI_EXCEPTION((AE_INFO, status, "Evaluating _PPC"));
  return -ENODEV;
 }

 cpufreq_printk("CPU %d: _PPC is %d - frequency %s limited\n", pr->id,
         (int)ppc, ppc ? "" : "not");

 pr->performance_platform_limit = (int)ppc;

 return 0;
}
