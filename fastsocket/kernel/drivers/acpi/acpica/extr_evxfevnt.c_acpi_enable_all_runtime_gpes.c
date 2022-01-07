
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int (*) ()) ;
 int ACPI_MTX_EVENTS ;
 int acpi_hw_enable_all_runtime_gpes () ;
 int acpi_ut_acquire_mutex (int ) ;
 int acpi_ut_release_mutex (int ) ;
 int return_ACPI_STATUS (int ) ;

acpi_status acpi_enable_all_runtime_gpes(void)
{
 acpi_status status;

 ACPI_FUNCTION_TRACE(acpi_enable_all_runtime_gpes);

 status = acpi_ut_acquire_mutex(ACPI_MTX_EVENTS);
 if (ACPI_FAILURE(status)) {
  return_ACPI_STATUS(status);
 }

 status = acpi_hw_enable_all_runtime_gpes();
 (void)acpi_ut_release_mutex(ACPI_MTX_EVENTS);

 return_ACPI_STATUS(status);
}
