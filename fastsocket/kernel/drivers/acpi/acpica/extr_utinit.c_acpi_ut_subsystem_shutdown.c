
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ev_terminate () ;
 int acpi_ns_terminate () ;
 int acpi_tb_terminate () ;
 int acpi_ut_delete_caches () ;
 int acpi_ut_terminate () ;
 int return_VOID ;
 int ut_subsystem_shutdown ;

void acpi_ut_subsystem_shutdown(void)
{
 ACPI_FUNCTION_TRACE(ut_subsystem_shutdown);





 acpi_ev_terminate();




 acpi_ns_terminate();



 acpi_tb_terminate();



 acpi_ut_terminate();



 (void)acpi_ut_delete_caches();
 return_VOID;
}
