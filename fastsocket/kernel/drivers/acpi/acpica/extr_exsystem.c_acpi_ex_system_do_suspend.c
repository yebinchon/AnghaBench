
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_integer ;


 int ACPI_FUNCTION_ENTRY () ;
 int AE_OK ;
 int acpi_ex_reacquire_interpreter () ;
 int acpi_ex_relinquish_interpreter () ;
 int acpi_os_sleep (int ) ;

acpi_status acpi_ex_system_do_suspend(acpi_integer how_long)
{
 ACPI_FUNCTION_ENTRY();



 acpi_ex_relinquish_interpreter();

 acpi_os_sleep(how_long);



 acpi_ex_reacquire_interpreter();
 return (AE_OK);
}
