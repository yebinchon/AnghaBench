
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_FUNCTION_TRACE (int ) ;
 int acpi_ex_enter_interpreter () ;
 int acpi_gbl_all_methods_serialized ;
 int ex_reacquire_interpreter ;
 int return_VOID ;

void acpi_ex_reacquire_interpreter(void)
{
 ACPI_FUNCTION_TRACE(ex_reacquire_interpreter);






 if (!acpi_gbl_all_methods_serialized) {
  acpi_ex_enter_interpreter();
 }

 return_VOID;
}
