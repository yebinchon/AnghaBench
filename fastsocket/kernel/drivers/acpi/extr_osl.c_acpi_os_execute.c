
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_osd_exec_callback ;
typedef int acpi_execute_type ;


 int __acpi_os_execute (int ,int ,void*,int ) ;

acpi_status acpi_os_execute(acpi_execute_type type,
       acpi_osd_exec_callback function, void *context)
{
 return __acpi_os_execute(type, function, context, 0);
}
