
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_device {int dummy; } ;


 int aml_nfw_add_global_handler () ;

__attribute__((used)) static int aml_nfw_add(struct acpi_device *device)
{






 return aml_nfw_add_global_handler();
}
