
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_processor {int throttling_platform_limit; int handle; } ;
typedef scalar_t__ acpi_status ;


 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (scalar_t__) ;
 int AE_INFO ;
 scalar_t__ AE_NOT_FOUND ;
 int EINVAL ;
 int ENODEV ;
 scalar_t__ acpi_evaluate_integer (int ,char*,int *,unsigned long long*) ;
 scalar_t__ ignore_tpc ;

__attribute__((used)) static int acpi_processor_get_platform_limit(struct acpi_processor *pr)
{
 acpi_status status = 0;
 unsigned long long tpc = 0;

 if (!pr)
  return -EINVAL;

 if (ignore_tpc)
  goto end;

 status = acpi_evaluate_integer(pr->handle, "_TPC", ((void*)0), &tpc);
 if (ACPI_FAILURE(status)) {
  if (status != AE_NOT_FOUND) {
   ACPI_EXCEPTION((AE_INFO, status, "Evaluating _TPC"));
  }
  return -ENODEV;
 }

end:
 pr->throttling_platform_limit = (int)tpc;
 return 0;
}
