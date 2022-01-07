
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acpi_namespace_node {int dummy; } ;
typedef int acpi_handle ;



acpi_handle acpi_ns_convert_entry_to_handle(struct acpi_namespace_node *node)
{




 return ((acpi_handle) node);
}
