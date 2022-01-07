
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int acpi_status ;
typedef int acpi_osd_exec_callback ;


 int __acpi_os_execute (int ,int ,void*,int) ;

acpi_status acpi_os_hotplug_execute(acpi_osd_exec_callback function,
 void *context)
{
 return __acpi_os_execute(0, function, context, 1);
}
